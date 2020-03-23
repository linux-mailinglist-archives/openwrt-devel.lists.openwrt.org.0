Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD5718FAF2
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 18:08:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=plyRV8Z8knKhBTkSeKToDNqhLI/WW8ce+lIinM3zOWg=; b=Ohrt3/SLlWuuhQGGQprG70S5r
	RKZck882ns2vWQg/zj06DshkAYK/D/I7kKxZLzg5DjyNP2D53lABp7cknKJq3XGf7G361Hl3e7B6O
	Upvj5z/037mY4UPeC1aHWzHPh3riyBMxby1/wXd1dsfbFCoO/aJEqtk9yVZ5gFJeoc2stVrI3d4Xl
	sayc+KxBSmdkkLXBo9R9dfPlfyhGYgeucggKHfv2xnrpzdBw38zh3226lZ9g4wWvEjPXFXibPBpce
	31ar6zsNFb0PjPH5zqCL7wwUlxAQy6Y09lOn1kKg8NOGd5cphxdd8Ab2YOsxSmo8yNxV6eM1sHJp7
	PRapmbwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQYk-0008Th-VR; Mon, 23 Mar 2020 17:08:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQYc-0008TN-6B
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 17:08:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id d5so5699706wrn.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Mar 2020 10:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=mJtBZKEPwetB7vwbFKj3j2cTXaXM6kw8pTvV0geT+Fc=;
 b=A6h8zYTGXNHzjlz08L0TGui75fQU23sSgTWgI5WdspAPRqVrECbENYNOV5I3MYV/bV
 5i5DQfn1TiW7i5esW9SLaFrqt2m88+MRAxpuyZNnjNq0Nm9wzjfFouwD0eSDs8hSPsQr
 qxocZvubLuSA5Kaf9G5WaoUuL15dWX+70beChpsBMM5Q27H4nZ6iSvpFaxoclxfRUvOD
 szp+qKFLM7efsrh6kSm3w6rnQeyuDE//1jmBjzz6VtXx5beYrEAwX6dIfeEoWKfracge
 0ZnFefWghufB5LDjGkb58BUUcntCa3vT+Zthc+R77L0c8VMFhEjPzXMEkm8v3sdPCzdb
 hX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=mJtBZKEPwetB7vwbFKj3j2cTXaXM6kw8pTvV0geT+Fc=;
 b=ds06qxQo2pdf8uSMP4ZDqe5lP69FNMkAjc0OXsoCPChvjAIjjvxU9AZ7bHf0uWi1bq
 fnddQU1O8FI6RSUnt6o2IWl+qdCi3/Qq78+KSFn96vED/TRagq/CJyxEqPW18C2ovPKA
 ZxI41PdecCYnnCPw7Fox1GTcCPq2TxrUm70hJUo217aaGvcblv132/1Pqc726KMJOSbz
 REa+Xx2r+jd+eRgvUNvzg/VsOVsgG+DJIDLjUctKopEX82y4cBfUE7gT1eCL01Eh/Y18
 QFK8/SZOizIgV3WE0MvXojVS6xO3GA6oth60RBPdsMxQ70SK5U1Wm8HhhnLYGYyuSLTH
 CmEA==
X-Gm-Message-State: ANhLgQ21IGj035kFFeahCxB+q1XXyiotltq9Wfv0BHlB6qCvzJcM49EP
 SlkdTBgZZxOOo1fWjCyX7hA=
X-Google-Smtp-Source: ADFU+vvp5UHFLTLQPxi+3wCFsJU/5hJcaD4Hc3Jg/PNZoFeEoW8LeYMyChz9BKSY4fdXqhy+RIje8Q==
X-Received: by 2002:adf:f104:: with SMTP id r4mr21753012wro.375.1584983288696; 
 Mon, 23 Mar 2020 10:08:08 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id k185sm288042wmb.7.2020.03.23.10.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 10:08:08 -0700 (PDT)
Date: Mon, 23 Mar 2020 18:08:06 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>, 
 David Bauer <mail@david-bauer.net>
In-Reply-To: <20200323172042.2bf023b5@kosmio.komorska>
Message-ID: <alpine.LNX.2.22.413.2003231805240.7452@localhost.localdomain>
References: <20200317205927.26314-1-mail@david-bauer.net>
 <20200322123544.14cd2b55@kosmio.komorska>
 <f742327a-a9ef-f52d-bf34-5da2cddc1733@david-bauer.net>
 <20200323172042.2bf023b5@kosmio.komorska>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_100810_232303_D68BE53D 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.5 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
 kernel 5.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

sorry, I forgot to mention the commit...
In my case I am referring to an issue with commit
15a0701cdde8eeae2a54880b813cdb8cdc09a384.
fixed with commit fdfca33350150644481096f1c7a80db2b670cdec from David.
Thanks!


On Mon, 23 Mar 2020, Michal Cieslakiewicz wrote:

> Date: Mon, 23 Mar 2020 17:20:42
> From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> To: David Bauer <mail@david-bauer.net>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
>     kernel 5.4
> 
> On Sun, 22 Mar 2020 20:01:57 +0100
> David Bauer <mail@david-bauer.net> wrote:
>
>> Hi Michal
>>
>>
>> I'm not that deep into the mtd-concat hack (expecially on NAND
>> flash). We might also run into issues when migrating to the new NAND
>> interface. If you you've found a fix for this, it would be great to
>> have it up for discussion on ML or GitHub. Especially as this is more
>> or less target independant and not directly associated with the ath79
>> driver.
>>
>> Best wishes
>> David
>>
>
> Hello David,
>
> Yes, I'm going to have a deeper look at mtdconcat driver and try to
> modify its behaviour to be consistent with what is now required by
> mtdcore. Concat is a virtual device, address translation layer mainly,
> so understanding how it works should not require any deep flash hacking
> knowledge.
>
> Cheers
> Michal
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

Enrico Mioso
Personal Phone Number: +39 3807096934
Tox ID is:
7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C7475

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
