<script setup lang="ts">

  // State for the creation form
  const hive = reactive({
    name:        undefined,
    description: undefined,
    weight:      undefined
  })

  // Creation form
  const form = ref()

  // Var to control the modal toggling
  const formModalIsOpen = ref(false)

  // Send the request on form submit and manage redirection and errors.
  async function onSubmit() {
    try {
      const response: any = await $fetch('/api/hives', {
        method: 'post',
        body: {
          hive: {
            name: hive.name,
            description: hive.description,
            weight: hive.weight
          }
        }
      })

      // redirect to show page after creation
      window.location.replace('/' + response.id)
    } catch (err: any) {
      if (err.statusCode === 422) {
        const errors = []

        // We catch errors from backend API
        for (const key in err.data) {
          errors.push({ path: key, message: err.data[key].join(', ') })
        }

        form.value.setErrors(errors)
      }
    }
  }
</script>

<template>
  <UContainer>
    <UButton block @click="formModalIsOpen = true">Add a new hive</UButton>
    <IndexTable />
  </UContainer>

  <UModal v-model="formModalIsOpen">
    <UCard :ui="{ ring: '', divide: 'divide-y divide-gray-100 dark:divide-gray-800' }">
      <template #header>
        <div class="flex items-center justify-between">
          <h3 class="text-base font-semibold leading-6 text-gray-900 dark:text-white">Add a new hive</h3>
          <UButton color="gray" variant="ghost" icon="i-heroicons-x-mark-20-solid" class="-my-1" @click="formModalIsOpen = false" />
        </div>
      </template>

      <UForm ref="form" :state="hive" class="space-y-4" @submit="onSubmit">
        <UFormGroup label="Name" name="name">
          <UInput v-model="hive.name" />
        </UFormGroup>

        <UFormGroup label="Description" name="description">
          <UTextarea v-model="hive.description" />
        </UFormGroup>

        <UFormGroup label="Weight" name="weight">
          <UInput v-model="hive.weight" type="number" step="0.01" />
        </UFormGroup>

        <UButton type="submit" label="Submit"/>
      </UForm>
    </UCard>
  </UModal>
</template>
