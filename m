Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C83D8118
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 22:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NmJja4jzWYhXkx3hvKDwX/1ytjLGQ8iSCg5hN37tzzg=; b=q2+KBx2GE2t1px
	fhTMZ+bYMnTBW0I6764hnyf8gndxCdZG7MxaODkHDnJWy8bMm1yDzLUmq511rtkIyQ9/kHarUgK7r
	9wv1GWliGn8YVnVwhNvEevpqBWYl4Ivm0yk2C4PMfq6SwhWrgoSUOCy7OMXujnOs3wxJPPmk7r3yR
	Un6AvTqRka8XXbyBB0pESof48PWFvKsunF+CkWb4Tjdvfsv1Qm1EdMIIo5pLVohpAADjh0XlSTUHS
	iQI5iIf0V8Om8h90nzeoSwxivye8Ha9Xt7NjBseeGoAJW/+qYcQTsymUi0dwi1CJXx3H4UZ3xh/Kq
	V/tsl4vm0R/GD7yDYA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTVN-0008FY-U7; Tue, 15 Oct 2019 20:33:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTV6-00089x-Vj
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 20:33:03 +0000
Received: by mail-ed1-x541.google.com with SMTP id v8so19366816eds.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 15 Oct 2019 13:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=miller-ec.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=PGEK7qCltNw2Hbpwt7gmL/d1ae8+4imdjZbtFnxbMTE=;
 b=kOyMQToe1OCe4yotblNF3fA9kj/doeGbPVZQT53sKxwgUom0M+GEUNDxy9crhwaGVW
 aaV/p3eUV4dhxjdr1gT58+VaGLDjhRSjtFAtk1JTknkMs65cRTAbXjNdH1EEsBwLHMxZ
 QImjz7pz/fTwDA0cS3e5E6Emc4sSITZu+7HyZ8IjzU35ewYlNRljmQMdyUVCHovGDUzg
 h+E7A3Bm8XKAGDnXWGlotvewPAtZUn2k5KM8XseomUf+SOM6XaRoIKD517aFRwVnuT/s
 erSPHlIK1oiOQazaRDwrbak6EowU6q0UqFicL1a5DRdfUnppnd0kbPe1fpN1USe3FV3q
 5ANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=PGEK7qCltNw2Hbpwt7gmL/d1ae8+4imdjZbtFnxbMTE=;
 b=LmMFt3YFsZL4HHKwyodOsdVk/ZcBs+HC2p7gMxP2tEOnBsoDcuNYHmd92yf5nk8CVC
 HgS7UEl+qNP4eyy+8eyfE7E6x1+VqS7lgBCMupP1+mWBlJt95ULEpX1zjvT/EtMbo/iE
 Oi+4+KGvpT1qyouwyuiHLKua/lIBeOujP6dfSBQ5198yqWA1SwZDuIYl7Gl6pLCGAEIx
 CsjD2T1BaKn2VM0rAZO+HhycfFQeANtfKuL/4Kv6DG+mSf54GVWt947vKilrYCTSCebM
 zKxvZoVD8xyc4XEHRgs+PfsaT3ybYomxmcvnlobi9CtLS9FwggRMTfNx2R/1rW/5CIi8
 pUlA==
X-Gm-Message-State: APjAAAVDWEr5CDKB65V4IkXozn1ghzBOU9F+yFIRxv3V5F+KL82+kl4V
 33uZjgL05R+4GBtBSMXg9ojYdjHHnKo=
X-Google-Smtp-Source: APXvYqyoZOjgdmK4C0XPSZbUAgDZ/626f6aXt2VfO28jPkgfrL05OFJfCDwTily4+BvYYZmD7drCcA==
X-Received: by 2002:a50:ed01:: with SMTP id j1mr35777876eds.111.1571171575499; 
 Tue, 15 Oct 2019 13:32:55 -0700 (PDT)
Received: from [10.130.0.110] ([185.212.169.146])
 by smtp.gmail.com with ESMTPSA id dx18sm2461688ejb.10.2019.10.15.13.32.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 13:32:55 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
From: Ken Miller <ken@miller.ec>
Message-ID: <ee273471-d1bc-d2d7-7c56-42ba67dfd46a@miller.ec>
Date: Tue, 15 Oct 2019 22:32:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:70.0) Gecko/20100101
 Thunderbird/70.0
MIME-Version: 1.0
Content-Language: en-US
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_133301_128852_7D240500 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 3.3 FAKE_REPLY_A1          No description available.
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: block: make extroot,
 mount preparation more robust
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

> On Tue, 9 Apr 2019 at 14:08, Kenneth J. Miller<ken@miller.ec>  wrote:
>> The extroot mount preparation code for r/w rootfs overlay discovery, and
>> determining the user-defined /etc/config/fstab location within, would only
>> discover overlays residing on JFFS2 or UBIFS MTD storage.
>>
>> This led to attempts at loading the uci fstab configuration without the
>> required /tmp/overlay directory prefix on devices with a non-MTD r/w
>> rootfs overlay, and thus failure to find any custom fstab /overlay extroot
>> entries on PREINIT.
>> (example: the default openwrt eMMC partition layout on the zyxel nbg6817)
>>
>> Futher, with UBIFS_EXTROOT enabled (fstools package default), and no MTD
>> rootfs partitions present, check_extroot would not attempt rootfs
>> discovery on block devices, such as the ext4 mmcblk rootfs overlay on the
>> nbg6817.
>>
>> With this patch:
>> 1) main_extroot now attempts to load uci fstab configuration from an
>>     already mounted overlay, before defaulting to the prefix-less uci
>>     config dir when no MTD rootfs partitions are detected.
>> 2) check_extroot now also attempts to find rootfs partitions on block
>>     devices when no MTD rootfs partitions are detected.
>>
>> Fixes: FS#2231
>> Ref:https://bugs.openwrt.org/index.php?do=details&task_id=2231
>> Signed-off-by: Kenneth J. Miller<ken@miller.ec>
> This patch makes it possible to mount extroot overlay on x86_64.
>
> Tested-by: Val Kulkov<val.kulkov@gmail.com>

Thanks for testing my patch on another platform Val.

The patch is quite small and only expands the code paths that can be taken
by extroot mount detection without removing any existing potential
conditions on raw MTD or UBI extroots, it'd be nice if it could get merged.

Any comments are appreciated.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
