Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8FBF872D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 04:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocHKBZtsHwztAUeoORzIOXzXSV2uEvjulZuqK8r0VOI=; b=UXm+VOvo/aWNEV
	wQj9HGF1RcMgvV92quS18GtGBZMNyCou3vSsxntQVo7n/HOQd0oHxa8T4YvDCKn8iwvBNdinJYlkG
	s6pxYloSf8oGsDN7rpyHEbcECap4ArhZhc6IJv3ZXSq00x4WssJXP3W5RNS9Uqbl+2yCwGGukiWZB
	MYP1VS7R2haBdvEMPEG1WsfkuS5vRsa/G+Ao+RAsTJRY3EbeBcr0UvnFcpR223P5iFuLik6KAP9kV
	/9zBlILmKgOUcWryPftsb3drTeocsp99dtDd1do9dG7BHOp9RVQ5WfUIPMc1+gdEnVc+fBpTGLFUI
	JhI6dDFijVhHTyEKrd3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUNG0-0001d2-GH; Tue, 12 Nov 2019 03:54:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUNFr-0001cc-BU
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 03:54:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so16861325wra.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 19:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4M5yrUNzC72rjkNno5bun/KVLDI1A+x+w068IiqdL/U=;
 b=RNNUHaj8OVAQGugp/vVVjOWPAd7AmlKfmoi2e9WqMyP7zGbwsLh8Nulfm516OaJ7qa
 4YOZ6B8zqnH+aZgcOD/5tdcllCQK+moAkDPJhGsYzb8ppLjjSlk3nHg0ky3rs2f+D16G
 yuaHSgoRpN3b92zk/GcyB1/tuBYm13MdJjHYf0DOTLK4ipjHVRIm9z2c+OyJX4a8Xqzx
 nT7WhH7aoNFDTTmVH1HzJDQ9BmxFYhTsfUCAgFN9pNRv1LSzDMjnX3N8crJ01Qfuo8VX
 Yu0LF73ewBIkAUXpEueS3JCvE//oF8sSavbhkNtFn8jTydjtjWj/7RQL00zXBTRPBXqe
 6DiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4M5yrUNzC72rjkNno5bun/KVLDI1A+x+w068IiqdL/U=;
 b=atlQIoB+Nyg58kGC1EUJF6nnNCOxIs5r+EK6Db+n9P54WBgkXgJn0flI6xU+fvFcuU
 WmKbmrHfyJbqz62nage4tyZSxHHH0u29f6kHNs0h5RUuyHVv00YjoQER5sxpzaROj9QK
 uPDNy54VL4Hj+HNS8f2LZAXbzZbpkAcxIa3/Z9ZfZmCl0BZVuoHNtMJvJBDL7hiQWG2h
 iaCzLZzE/v513npxCObq490rtrRMzZ7FYqbBwXC/I+z8LhF9ymYB3OSx/g4DFOTjn23h
 8yMzk/YZSc28F2mQSVYikI2FDf4o8yS+u2ttFXBSsNNI4ypvsU6S5aMqqovxApT5XtF4
 2+Eg==
X-Gm-Message-State: APjAAAWiEA+D+t3XxPvTDYmRdP87kHo8n8n/QGsfOn+bvI/2sOXtmeCo
 MUjQyF5LyKKMQSPmpbBjQe1wdApt
X-Google-Smtp-Source: APXvYqz+b8ULofJaHu3H9cx1GrORB+0k3kBSQ5feySFEyS6M4uTBFSvXCvWZ0X3zjgZoemQ7bnbLOA==
X-Received: by 2002:adf:ab4c:: with SMTP id r12mr22641723wrc.3.1573530848892; 
 Mon, 11 Nov 2019 19:54:08 -0800 (PST)
Received: from [10.77.124.135] ([37.163.47.175])
 by smtp.gmail.com with ESMTPSA id m16sm1375971wml.47.2019.11.11.19.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 19:54:08 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <025a227a-d897-e71c-3193-ef3776ffec39@kryma.net>
Date: Tue, 12 Nov 2019 04:54:06 +0100
Message-Id: <D9871BD7-FFD3-4A7B-B082-BDFD674F4E11@gmail.com>
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
 <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
 <025a227a-d897-e71c-3193-ef3776ffec39@kryma.net>
To: Kryma <admin@kryma.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_195411_394252_977C276D 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SPI frequency?


> Il giorno 11 nov 2019, alle ore 23:02, Kryma <admin@kryma.net> ha scritto:
> 
> Hi,
> 
>> That's wrong. You have 0x7d0000, not 0xfd0000 ...
> 
> There seems to be some discrepancy, possibly v1 vs v2. The specifications on the website and the partitioning seem to imply a 8MB image size - however, U-boot bootloader and the sum of MTD block sizes gives us 16MB. Unsure, I tried both 8000 and 16192. Both seem to work well, save for some I/O errors when writing files to homedir with both. Not sure what that implies, but assuming 16MB as size all that given.
> 
>> Will this work without a defined gpio?
> 
> Could you elaborate?
> 
> 
> The rest seem straightforward to me, I will be happy to fix them in the next version.
> 
> 
> Closing thought, the aforementioned I/O errors. Parts of the filesystem seem to corrupt on occasion on my test device. I will look more into if it's a hardware issue, but for now are there any possible software/config causes you can think of?
> 
> Thanks much,
> 
> P. B.
> 
> 
> 
> 
> 
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
