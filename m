Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BCC910ED
	for <lists+openwrt-devel@lfdr.de>; Sat, 17 Aug 2019 16:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rn9LuPmi0V/fSy/vZq8sP/pw/k6x18irglceZUCaGQ=; b=StGCQw+g7+hy72
	C18Dtn1DXXYlHZuOwLu237RdmKKw+9QokytLZ4NsKmGYjlfF8owLrG+7GMOIQ4mJrnj0yrCAsB376
	2KKLI+18vFcoAUm6Y2yC2wOhHFyclsfFSkyRb6EGfXcb+XjxhKw87P4kSHGeJ5CDIeBYoNRP8ozl6
	/zyFxoqdKWiWvQpa+sxl4Rn4nOfUZ6tzBcCAOo8pmeg7KAoHUkzmQiC/OznWFONc1Za6ahhTq/utw
	4Q197eom+BH7G5Auuj1+oRJLv/UtPyro88RSUH1X6W734YsGLMpiD2kuIKHNo2EQffqOrgzvJCOKk
	84tI7DnlRiDee/o9NCBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz06S-0004Ci-U2; Sat, 17 Aug 2019 14:54:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz06L-0004CM-UK
 for openwrt-devel@lists.openwrt.org; Sat, 17 Aug 2019 14:54:43 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so12152431otk.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 17 Aug 2019 07:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e/sSzjONn+2QeMeeswyjmrRmcFkAZxZ9VQuH1zPQhx4=;
 b=cwqsW+VcdcR0tf95RGvSRtUsOvBtVqf/ka8GzTiuWER/d7Jd9+pz/QpgWbdCfeXu+7
 aqsjwMREo5eZCqEemrQt5ZdNJrVN+u2b/RvteRVJDLiCvgiCI7Dvm1L5BTXVoANAFyB4
 PJTL8EgUVdbp3yRspnKFvj5gMRnrzrRqurqxwDTXhtdWOD10k5VjJrRmyplyGSZtHIDC
 cPcEDdA4sUoXQ4IxhEMFiuHzGsUlgQTUgtznJgOTaOzsmqccp1VCdEe62WjeqiF+OgX4
 p03Dziq3oZkc7s3O9tcue3ROOS0UK4oH93JG5CKslqnQMo+DgDG/Q3HOQcdeMoP80u+b
 Vu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/sSzjONn+2QeMeeswyjmrRmcFkAZxZ9VQuH1zPQhx4=;
 b=d6rAiE/cQArdFGtlL5PV9gg2+yEAYE4dct52A18sVQV14FYDkk+pE4yRyUrbXjxQYQ
 cthuzjhfsv4jaK17AHYKeS90MmL/VCpIIpbyUW3CnzbPUTBqj/bAKi6KuBGLOc8jajI9
 7953AewohODci6hCiA67GW2hYn50Yb4TdDiZ8Xb0c7V4rylJY0LJJ2HUl0yw5qsmJ5+U
 3ZiL4Ln+tv6GgaQ1eVmOctvYmV3ggYvUBDlkghJhfGtBHQG4Ez9uw5WXS7bK8XOXXktw
 46jRm7dUSpQlcJnzT7x891PY+sWoJoWi83yFtsL0lGuz6uVNpipgYbLQaBTuEux4Ppz4
 yF5w==
X-Gm-Message-State: APjAAAXtIz4jnX4y40FdpDKVeJxeS4nSAD3obd4p85dkD4Jia737c/qE
 hExmFBNktWLOw3C5WD288s0x0aD/66MTL2UC89s=
X-Google-Smtp-Source: APXvYqzcTE47F+hQxl95pJVVZsNghGmgD+sDlGTYorjDXZWkRet6fUmCeKck++sdpj/qYvulZGDhR/qSyjslyECft6k=
X-Received: by 2002:a05:6830:1184:: with SMTP id
 u4mr11192906otq.181.1566053677766; 
 Sat, 17 Aug 2019 07:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <b766be95-578a-cfb4-38b2-8aaae2273523@yandex.ru>
In-Reply-To: <b766be95-578a-cfb4-38b2-8aaae2273523@yandex.ru>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 17 Aug 2019 22:54:26 +0800
Message-ID: <CAJsYDVLim-YTx+KuPvNDBg9VcczZjvjE9NHLyVXLjH4EodCDVw@mail.gmail.com>
To: Serge Vasilugin <vasilugin@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_075442_018877_6919226E 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] kernel: add support for realtek
 rtl8367s
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

Hi!

On Thu, Aug 15, 2019 at 4:26 PM Serge Vasilugin <vasilugin@yandex.ru> wrote:
>
> Adding support for tplink archer c5 v4 some problems arise:
> 1. Device use unsupported rtl8367s switch.
> 2. rtl8367s switch have non default 0 phy address at mii-bus (29).
> 3. rtl8367s switch is connected through unsupported extended interface 2.
>
> The patches resolve these problems. Many info and sources were used from
> forum topic [0]. Vendor driver and u-boot identify rtl8367s as RTL8367C
> so I keep it.
> All thease patches may be backported to previous release without changes

There are some review comments about this driver on GitHub PR#2174 [0]
Would you mind to check it out there?
(v2 patch could still be sent here on the mailing list)

>
> [0] https://forum.openwrt.org/t/support-for-new-archer-c5-v4
>
> ---
> serge
>

Regards,
Chuanhong Guo

[0] https://github.com/openwrt/openwrt/pull/2174

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
