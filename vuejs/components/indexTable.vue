<script setup lang="ts">

  // ----------------------------------
  // ---------- DATA PART ------------
  // ----------------------------------

  // Retrieve data from API
  const { data } = await useFetch('/api/hives')

  // Edit column list to humanize it
  const columns: object = [
      { key: 'id',          label: '#'           },
      { key: 'name',        label: 'Name'        },
      { key: 'description', label: 'Description' },
      { key: 'weight',      label: 'Weight'      },
      { key: 'created_at',  label: 'Created at'  },
      { key: 'updated_at',  label: 'Updated at'  }
  ]

  // Go to show page when you click on a row.
  function clickedRow(row: any) {
    window.location.replace('/' + row.id)
  }

  // ----------------------------------
  // --------- FILTERS PART -----------
  // ----------------------------------
  const querySearch = ref('')

  // Function to filter rows by querySearch (input text on the UI)
  const filteredRows = computed(() => {
    let rows: any = data.value

    if (!querySearch.value) { return rows }

    // For each rows
    return rows.filter((row: any) => {
      // We check values
      return Object.values(row).some((value) => {
        // And we keep it if its containing query asked
        return String(value).toLowerCase().includes(querySearch.value.toLowerCase())
      })
    })
  })

  // ----------------------------------
  // ------- PAGINATION PART ---------
  // ----------------------------------
  // current page var
  const page = ref(1)
  // per page var
  const pageCount = 20

  // Function to slice data in pages.
  // Should ALWAYS be the last edit applied to the data, to be sure the total amount of page are valid
  const rows = computed(() => {
    return filteredRows.value.slice((page.value - 1) * pageCount, (page.value) * pageCount)
  })
</script>

<template>
  <div class="flex justify-around px-3 py-3.5 border-t border-gray-200 dark:border-gray-700">
    <UInput v-model="querySearch" placeholder="Filter hive..." />

    <UPagination v-model="page" :page-count="pageCount" :total="filteredRows.length" />
  </div>

  <UTable :rows="rows" :columns="columns" @select="clickedRow" />

  <div class="flex justify-around px-3 py-3.5 border-t border-gray-200 dark:border-gray-700">
    <UPagination v-model="page" :page-count="pageCount" :total="filteredRows.length" />

    <UInput v-model="querySearch" placeholder="Filter hive..." />
  </div>
</template>
