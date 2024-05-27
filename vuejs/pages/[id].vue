<script setup lang="ts">
  const route = useRoute()
  const id    = route.params.id

  const { data }: any = await useFetch('/api/hives/' + id)
</script>

<template>
  <UContainer>
    <UButton :to="{ name: 'index' }" label="Back to index" class="mt-5">
      <template #leading>
        <UIcon name="i-heroicons-arrow-left-20-solid" class="w-5 h-5" />
      </template>
    </UButton>

    <UCard class="mt-5">
      <template #header>
        {{ data.name }} - {{ data.weight }}
      </template>

      {{ data.description }}

      <template #footer>
        <div>Creation :  {{ data.created_at }}</div>
        <div>Edition : {{ data.updated_at }}</div>
      </template>
    </UCard>
  </UContainer>
</template>
