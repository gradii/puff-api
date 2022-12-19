module.exports = (config, context) => {
  return {
    ...config,
    experiments  : {
      ...config.experiments,
      outputModule : true,
      topLevelAwait: true,
    },
    output       : {
      path               : config.output.path,
      chunkFormat        : 'module',
      module             : true,
      asyncChunks        : true,
      enabledLibraryTypes: ['module'],
      library            : {
        type: 'module',
      },
    },
    externalsType: 'module'
  }
}