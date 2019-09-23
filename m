Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD20BAF2A
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 10:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfuPQz0EDLPrqg/zBQxiul/CDIXjV24jBc8ozyZGZBs=; b=WbMvo6PybFQNIP
	UPNOqSuwloacLxF+qMLWb3koqf7yhEz+L5Ox+peQea3CxNkgW9B6sELWBTtvE/Q9pgXVv2AVqafN8
	aUuHztZTpK9Ka/qfdEq2ouTKtK4llGdpYAtAmFfzAh/Vgx5UfJZUKwstXcUgODEUBR7e8Spdl+Jty
	KmshN6ZXLTDypT0vv28kSgpW5McC06SuAyKN0fNED+P0B0yg68L1xal+hN9f4qIvRvqGvb0mYT3Q1
	ZjNUK+sfxKQ8MDrjMocc7/IGBNE+MIGw/Z6+dYqE6xL4Z5ydycMSX1GgSWm365Hl6BZRFgF1J5AQc
	QiT5GnmMQMvb1qWDUNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJY3-0000ED-E8; Mon, 23 Sep 2019 08:18:19 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJXj-0000Bg-Lw
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 08:18:01 +0000
Received: by mail-oi1-x244.google.com with SMTP id t84so6808049oih.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 01:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pe8mcM5IG+iLl+fA1sJOZiPlTrmFo6O1cmSRw9RlT2s=;
 b=LYsqW3el7U24u7gbziNUrLJo4qJVZthdkIBDQiKExwze+1JnLWaXk5oIPt1mLwur8O
 /DP6KEuP91AQx4Txin53XQ9D+ZqYd/QuDptRTC/ghqJYHnoB1QBm5D5C8gxf9XZK4/X9
 d4D4CXq73URnxtaxi9ru8JpRhj9qZNJGik8Io3SEpmQYJA/8CT89KJqszOgGojX2n37k
 UrU3EPojC60IUoO0SDitCx9Kw62rWttxWEWiGF0QOeRO9Cv7okjUyzfnZdMqMmwbho79
 e9O79pzHA2JIVW5aAr2S3MwVG3Fu3PUU0cDxQPuJoOJ6ejxkRBMyUWQnwHQPip4ePKRU
 eLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pe8mcM5IG+iLl+fA1sJOZiPlTrmFo6O1cmSRw9RlT2s=;
 b=RF1aeWaztpGcDMTldYoXuVYXso/8QSlXPVMVdlVBHBYqkfnV9RF9KiqsXNPujs9p3B
 Qsq/h5ja4el/USMW6DczT9MmMussECF6a+SkRETvCYY3ztvPdLAM10BCVYJ8P/QtwWqV
 s71q5EpeUvnsYLTvSDw9/BXBbLab4wRX8M2yoCEfQCohFk+qbDFjJ/aZzC8g0Tpg7gg5
 3fT8kNJtrOgmkWHEcy3xd034DvhxB4Br5u+JABMOllsAdRFVTL7RDHwXoZxTTa5LLyQa
 R6w7yewHvlliXkEa4LFdFCp6wggwvbgIK6H7nNXLAM2q/FM51FDShDG7d+mFMhgZarp6
 EM5A==
X-Gm-Message-State: APjAAAVTRLvOaijnGrUlxzrx8Vnh3BJUTPA87cl4ZO5x1k80SO4Zyi4x
 2OInhHFoAb12972S8ajqAMNrrFemcVyDXgHO5tFVKEcAASrJJA==
X-Google-Smtp-Source: APXvYqz5HlZfbFw0IRBxeolMn1qZcJD0RXoWYzwcKgMDqmbjiSWErX5hk82ntRFfg5QGxrDZDUt0mU20Vho/9ImffhM=
X-Received: by 2002:a05:6808:8e9:: with SMTP id
 d9mr12649499oic.24.1569226678360; 
 Mon, 23 Sep 2019 01:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <eb8f5946-b689-2330-da45-1399fd6b7dfc@yandex.ru>
In-Reply-To: <eb8f5946-b689-2330-da45-1399fd6b7dfc@yandex.ru>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 23 Sep 2019 16:17:45 +0800
Message-ID: <CAJsYDVJnmn+0Mr-WY6W4myS+a1aSQRahxs09GGP3GwRV8Cx1Kg@mail.gmail.com>
To: Serge Vailugin <vasilugin@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011759_921589_1075452D 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/3] kernel: rtl8367b: add
 configuration for extended interface 2
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

On Tue, Aug 27, 2019 at 5:50 PM Serge Vailugin <vasilugin@yandex.ru> wrote:
>
> Both rtl8367b and rtl8367s have two extended interface
> rtl8367rb: 5 port + 2*RGMII/MII
> rtl8367s:  5 port + SGMII/HSGMI + RGMII/MII
> (?)rtl8367sb:  5 port + 2*RGMII/MII
> These interfaces correspond to EXT1 and EXT2 (ports 6 and 7 respectivly).
> Current driver don't support EXT2 configuration but notexisting EXT0
> (port 5).
> This patch allow to configure EXT2 in dts-file:
>
>         rtl8367rb {
>                 compatible = "realtek,rtl8367b";
>                 cpu_port = <7>;
>                 realtek,extif2 = <1 0 1 1 1 1 1 1 2>; /* configuration for EXT2 */
>                 mii-bus = <&mdio0>;
>                 phy_id = <29>;
>         };
>
> This patch is independent of the rtl8366_smi patch (set switch phy address)
> and may be helpful for device with rtl8367rb connected through EXT2.
>
> Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>

This patch seems to be broken in patchwork:
https://patchwork.ozlabs.org/patch/1153690/
Would you mind to create patches using git format-patch and resend
them with git send-email?

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
