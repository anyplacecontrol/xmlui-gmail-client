  function transformMessages(data) {
    const newNextToken = data.nextPageToken || '';
    const newTotal = data.resultSizeEstimate || 0;
    
    const shouldUpdateNextToken = pagination.value.nextPageToken !== newNextToken;
    const shouldUpdateTotal = pagination.value.currentPage === 0 && 
                               pagination.value.totalMessages === 0 && 
                               newTotal > 0;
    
    if (shouldUpdateNextToken || shouldUpdateTotal) {
      
      pagination.update({
        nextPageToken: newNextToken,
        totalMessages: shouldUpdateTotal ? newTotal : pagination.value.totalMessages
      });
    }
    
    return data.messages || [];
  }
