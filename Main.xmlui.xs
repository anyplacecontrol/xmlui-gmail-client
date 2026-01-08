  function transformMessages(data) {
     const newNextToken = data.nextPageToken || '';   
    const shouldUpdateNextToken = pagination.value.nextPageToken !== newNextToken;
    
    if (shouldUpdateNextToken ) {      
      pagination.update({
        nextPageToken: newNextToken,        
      });
    }
    
    return data.messages || [];
  }
