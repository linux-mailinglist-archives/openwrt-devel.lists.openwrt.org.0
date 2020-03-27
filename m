Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0201957B8
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 14:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qivc97Qx0c8Qs7W8YFxpRWPZmzzMzVM8sr7c5LAUWmw=; b=QX46bMtB9RflioDWzj/3p0R5/
	VjeTGtg2DWLzsV2Azvcum1ha/7FB7oukW30LGAQgyodOj+5LoUuo2GZgcMqa4/H8APr3wd3WtsMEP
	uoleK1Nhu3Eu10LJIGJmcaDgwmiwDa78xzJ7+aNk2rShnOTTLRkc07matl5+b44tBTB4/2/MUlnvw
	qlfC+bXeVlZoNUyadsqWf2WEGPSoK/wezhxvpD6sGJk/mxP7ceOUyZbcifzgerG/g7jEh/dEq+tdi
	OwCj/XErPKsCipZpudXLlMfhiCnEpdKBVwBbypKtWETPuFg+Dd1ulkXD8zeYaTWDTNIzgj1Tk9uxQ
	sNXUHCt1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHofh-0007dR-BA; Fri, 27 Mar 2020 13:05:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHofS-0007cu-BP
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 13:04:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id w10so11352233wrm.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Mar 2020 06:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=rY26tl/mC/7R00eJQlX0RA5w0JSJ+uESP1wpK+vYYFU=;
 b=WZiOfjREjv+ZZV2T6gwVf6JQNudMuPLBre1ISu7xQSJFZ0Ln17rQnMsUIXvTM/kyGN
 FivMTdxV1uadJXb1suUpwwM1Wojbtxcw/SlZU0yFStLR5Ea8DDFf2CfoB8o8g24MFNZi
 /lzza2buD4LCV6vgwKYJFvx58hKdNU8s0g+JMCRbsZ7SXceKzfalcT8yqdO0AKcwHlWv
 YPuHBg6DlXFARG4T1X3fYTjBzvkz/BCaXi9ct8K7PZIATXzvA06Pa4ioHumEn23Oh/oK
 90vrWUKg7AEHuAaE5LgLdUNq38PUqbHeK/QLvi+ZCLRusMCnAuckgSpmKrskKccK6Oc9
 grsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=rY26tl/mC/7R00eJQlX0RA5w0JSJ+uESP1wpK+vYYFU=;
 b=BmsLEp67LQepb4lgeaUqkMIpmDTOrZv/JDAG4jl97MDSrhv3ZSJQCiroLDc3MpAeA2
 7akucYOEOg2thjb0esIqM2KyebAfiiPaCYnJ9bjMNUP2WLlyLsX26CvU3+jbGwJZuB79
 ZXVGyz6wer4Bo2OUeYfgQfqj2uwrD52AvuDOzYvHJfq3J/iD/WKlnUornHBTDY7UAvoz
 KTARoefGPl96b9qB+/Vg3+j1MICxXgLwhC44m/9GCB9RJGYe+eOIERN+bWaxoxosAkSk
 wiuNqoKzTjVpN8gSPeAQC0SwL7muNfJwFWN5U3gewmeRNBggq8imKl+a8rwnWwUEr4h+
 fxgQ==
X-Gm-Message-State: ANhLgQ2/0dliC0LcO3svqXEoDOUPXp07sPOFtRWXve/k7E3W9Tef3/dy
 HXUcUK/ewy/L7cDQNrGkw9w=
X-Google-Smtp-Source: ADFU+vvnYMCFvwbvgZTq8RcSM7O3K6+89R2h6K4Hf3rPVIaiQR+NM+7ooDbOJMrNcG2fGpQ/IcH/mg==
X-Received: by 2002:adf:f68a:: with SMTP id v10mr15051297wrp.80.1585314295382; 
 Fri, 27 Mar 2020 06:04:55 -0700 (PDT)
Received: from eeeinsomma (host47-58-dynamic.14-87-r.retail.telecomitalia.it.
 [87.14.58.47])
 by smtp.gmail.com with ESMTPSA id h10sm6892866wrq.33.2020.03.27.06.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 06:04:54 -0700 (PDT)
Date: Fri, 27 Mar 2020 14:04:52 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Chuanhong Guo <gch981213@gmail.com>, 
 Adrian Schmutzler <freifunk@adrianschmutzler.de>
In-Reply-To: <CAJsYDV+Ni_DML0T3LtuW4Ls0b8a=QHqdfrb4QTJx_DOJLxBBOQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2003271352080.419@localhost.localdomain>
References: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
 <CAJsYDV+Ni_DML0T3LtuW4Ls0b8a=QHqdfrb4QTJx_DOJLxBBOQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_060458_393642_838BB231 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.9 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory
 image
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello all!!

I do agree about this idea, but I think there is the general need for more clarity. When adding support for a device, it could be good if the author could elaborate on:
- how a device can be recovered: detailing recovery methods and nuances, so the user knows upfront how risky is an operation and prepare with the needed tools in advance
- stating what generated images can be used for when it's not obvious: (e.g.: NETGEAR NMRP + tftp) and so on.

The situation changes a lot per device, so elaborating a little bit more may be a good idea. Infact I think I saw some device where you can install OpenWRt only via tftp.

Regarding TP-Link: I can confirm that ramips TP-Link TL-MR200 <sarcasm> NICELY </sarcams> overwrites it's u-boot when proceeding with a tftp recovery.
TP-Link RE450 doesn't provide for recovery at all: an UART is needed.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
