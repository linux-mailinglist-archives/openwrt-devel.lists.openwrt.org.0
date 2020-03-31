Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5BA199C81
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 19:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnvMDFcW2kO8Hvf9YQ/Rp0VeYtuwHJqLK0TXFiH7niY=; b=cutN9eWe40AG5C
	B8RnPef+/pY3+Xct/RAP75tCZhIcWJpRbBdHQb8pB8Ou9Sq/4+LNMPo/obkM7D/U55XzD/rEW/N9u
	+FiLk/YRnyInCcShNvki0k68oRNZrzHz1PXsOT3mOrZgaOBSEDYoP1MSliWCjoWIkYO/MG18+wLlm
	9KdIl1L808yBuIDyl+ZZlxwi++o6iB5rsyMG8yhEnKrRCgtH5wNzfhL1PetqxYZ61I+4dOohMYgMi
	ysiniduQioHDW+tMoSWnwfGEieYlP7m70zWB7wF1TYEYbU00CNWxJQhFbiBrW7USSW2S344mu67IV
	fWnDHLRM7Yv5lKA9LbUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKL1-00012A-9g; Tue, 31 Mar 2020 17:06:07 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKKo-0000s5-3j
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 17:05:55 +0000
Received: by mail-wm1-x333.google.com with SMTP id 11so2244050wmi.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar 2020 10:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=6qT7xghcwpFlw16gAkCt8D5bSzxH/zZikAhs59f5GXM=;
 b=bEkUQZZOxCNdRN6pkQbFwLMR0b6H71pGdJaBWqeOsYKkbsKQcPaZR1PAhUsxJ7JvjV
 PknuYvOwDIrikpLUYCqh6vENYe8t5JevtOLfzpKirvoFVeKn9YmKGmq6Kok9nYhet7EC
 jzs5Lq7Cc+XiNXvib9HN2zMXWwQRsKah7nwMq0At64/kpMCk3G3v16jpn5E/mDeITZyh
 U9Nqf/vUmowuIMgDlGsCZqgnKuvJtRTOFtuk2cb3sSHNiNyOM4TEsdI2kk+5dOIbIfvZ
 ecBYkJZCe77wv/7xv8IxPgDIVOvxBEfE028K8trSj4RORwMXZzaigxffqMB7lREEqrhh
 g78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=6qT7xghcwpFlw16gAkCt8D5bSzxH/zZikAhs59f5GXM=;
 b=Vo0adlzBS9HMp5XlbqYhwDUz/TpobewAkmWFXNjP+2NfDw+ILcRJTz52TqoFjrg9B5
 RXS9xxfLWg3+CBsxXq4cYe3jVHYQ5XG0oK3ldNU1bEpfk1aiUyAxOVkzeGKg7uusSS/Y
 6uCO0VAczJ8b2vERJNSqBKydgDEIBKydMu6sgLsi0W/BcVhZ/qOyxyiYNBDLtHcbkLJq
 1l6SNOnMTrJsVErSxVh4JZXxCkwhA9j1WS1YPelGXGDnQLaFcAc/jG1ujQj4YNsO4VrK
 +gDpe6aBMFoPsZ5lcBelwFFtJLBUT7oE1lScjRMQX81aSboF2vtJI8bA5zFHR1S9qRdB
 E2Bw==
X-Gm-Message-State: ANhLgQ2GMrJwU8dFno9O7eDQI8KDYWNXLxzwcFjB1a9PEwJvNTVpxL7R
 Iy2WDRUy7O/cueSircbFdrAE5IV5kCY=
X-Google-Smtp-Source: ADFU+vsIVgaZdqrRWEhTLhTEnhG1o03VGk8eCcuoiZL4HMelhULHXvTGTzzGLJymr22oz3BCOdqXRg==
X-Received: by 2002:a1c:cc11:: with SMTP id h17mr4384288wmb.39.1585674350557; 
 Tue, 31 Mar 2020 10:05:50 -0700 (PDT)
Received: from eeeinsomma
 (host109-180-dynamic.32-79-r.retail.telecomitalia.it. [79.32.180.109])
 by smtp.gmail.com with ESMTPSA id f12sm4636675wmh.4.2020.03.31.10.05.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 10:05:50 -0700 (PDT)
Date: Tue, 31 Mar 2020 19:05:48 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
In-Reply-To: <010901d6075b$d16bf560$7443e020$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.22.413.2003311904380.4747@localhost.localdomain>
References: <010901d6075b$d16bf560$7443e020$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_100554_282941_485C1FEE 
X-CRM114-Status: UNSURE (   3.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Remove generic OpenWrt copyright spread through
 files
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian!

I think we can't remove this without replacing it with something like SPDX.
This is a big project after all, and given how vendors tend to interact with it, claiming the copyright can be important.

Thanks,
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
