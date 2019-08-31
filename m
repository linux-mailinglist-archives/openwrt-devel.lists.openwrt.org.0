Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB1A43FE
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 12:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmZEX9oyYOrbMZ2B36LMaDD7FJcZhiWhM+zIlLGow/8=; b=DJPqsUJ8Xnu8aJLSYznHMqJ84
	zTEulw1Dbo2JLH1yZk0ZdR8QVnfHuGFqnq86X/XtfEap/uzGnHG2sC4JnYSUpdESCSxk2f9LCzmc0
	/9YHrPIDfWqdko1H5yheXLN9l2cGkgbtROGqoH7QQxs2QhzbEzErrG7JTE8VJfEFmY81BnvVNTdF/
	QTkVQALNYNABGWn0aefWL9Udns8HJAO42gp2D24dIxdMw4jG6maxc3JGwACQJudlA7uSlopUQvPl9
	6Yag8K0FYwiD9hU76ju0K2iLt/fy2x+tbCRU04URqhstSw/JDflZF93iKtHt8JMdrDdYhz3Fdc2Xl
	tcspKnifA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i40ZB-0004Sq-Ie; Sat, 31 Aug 2019 10:25:09 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i40Yu-0004S5-Fg
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 10:24:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id y19so9319218wrd.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 31 Aug 2019 03:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=FPvSa3varsHcJI7MnBkWkLIDxlq5Rd0vGGFbxQ1Obj4=;
 b=gYuhRUQQ2hwt5HeJvvKMgTrqeEE9RZuBACV7GF+GODuIsxAj1o8jEL3WJHqIBesN1u
 klMvJu3nPmo2nVhiOSJRGi3brTPp2KL5N9gXXzRwrvtE2SRoXj3zG9RfrxmEX5XhNSUW
 l4At577V01i2h1MloKFACOPrr0rktUIGMSi+qQ4NV+7LhgLI7mJ0dZ76oWIZk+HWErzw
 5kgpzILlrqq0FeGQdGG2aHvqyPYdi+JvOvSyHETQMM4Su1E4tk401UBmU7m1Sl2QIpdc
 wNtTE9vz5RnOzcGRPmqXGlRQqSWBghBh5yASwKw7Lk9B918fkeI30CVLFBt48ptpL4DA
 +4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=FPvSa3varsHcJI7MnBkWkLIDxlq5Rd0vGGFbxQ1Obj4=;
 b=rOpKYgjgigsc4olRuTMbClVGHNxvzUp+eVvqGOl+ArCEQKQGazmuLJvMjEdvrVmJHS
 sUIiobCngiHUzeAUdKiMX3Iq6kFYYnePg65vrF46MIMB7tAk+UJw9udKplT4hRZbc3eX
 71diaUb/YrFad1G64RTbHBhOE/l+YtLmgZdCU6mMkrsOASuvyYLmzjPqv3Xbmd3Aj0se
 Q7DcHpld9S/zdLvbXGlfTQJA81646vk/ocvtDVGmDTzPixTsy6ITyqGthhrmxNc8NRe5
 yxVE+BMPWU0Cx2C+pyZYoVR51kNuZBUxv5Wu8NVrT5y3ChUvUha31W1PFQsGFqJ72eQ+
 cMvA==
X-Gm-Message-State: APjAAAXp3MFE5KMRhp3mMJrvQnPC7LdoegaN5mssOTMImx0EubeLpPCU
 Clam6NrS520m02yedvfqsqihmsFX
X-Google-Smtp-Source: APXvYqwOGi6SuGKr7902J8QpYi2CIxSMkSp5enjgmxrlWwXHPgQyYUEgeUzoXvHUn/MjfEb0ZOPjAw==
X-Received: by 2002:a5d:5612:: with SMTP id l18mr6046721wrv.177.1567247088290; 
 Sat, 31 Aug 2019 03:24:48 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id l62sm17166203wml.13.2019.08.31.03.24.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 03:24:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 36de82c0;
 Sat, 31 Aug 2019 10:24:45 +0000 (UTC)
Date: Sat, 31 Aug 2019 12:24:45 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: John Crispin <john@phrozen.org>
In-Reply-To: <a4a0babf-3ab6-4a77-18ea-acb101165b55@phrozen.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908311224240.7190@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908301528450.4349@localhost.localdomain>
 <a4a0babf-3ab6-4a77-18ea-acb101165b55@phrozen.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1828557868-1567247085=:7190"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_032452_584113_BF85C662 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] MT7610En bluetooth support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1828557868-1567247085=:7190
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Thank you!! :)
Enrico


On Fri, 30 Aug 2019, John Crispin wrote:

> Date: Fri, 30 Aug 2019 15:39:02
> From: John Crispin <john@phrozen.org>
> To: Enrico Mioso <mrkiko.rs@gmail.com>,
>     OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Cc: nbd@nbd.name
> Subject: Re: [OpenWrt-Devel] MT7610En bluetooth support
> 
>
> On 30/08/2019 15:29, Enrico Mioso wrote:
>> Hello!!
>> 
>> I saw commit 7f9edadf85299cd4fc965a811b40eaa57a368486
>> 
>> and was wondering if we can now use the BT hardware found on this chipset.
>> Thanks!!
>> 
>> Enrico
>> 
> its still WIP
>
>     John
>
>
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
--8323328-1828557868-1567247085=:7190
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-1828557868-1567247085=:7190--

