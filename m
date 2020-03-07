Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E546317D04F
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 22:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96VrTUiREh30ehlh16JmADrOm+h2x+RDC/y75+Vszig=; b=OGLKBcKTvvtd/a
	5ErIW4NZn+blGg6JIG8NyNQfVb2tMP/bH8vPY9LWmMnej6w2R02BXPkUeKHXG8qG5kfiJJFfwStXm
	YsUEyq57o7tcMCYT9244eWruACdplFpUbo3ZRBz9xcLrwFqxQnuj3a71zZyWvmh6ISkXq2c8NYAZO
	WpvX/zLVL7PjMv24hnPZrTuB5E3tIBtJXRZ+QjN/1baX/MuhMWdJ1J1ClqMnOin1754Y9SuOy55T/
	bsD3fdcAPqiYDxeyZUJWbOIJZJNUcTLxOZwfIekD5VDIMYFrMl5dmrDFPwedXxr95EZ8w2+zDNqPm
	+AMIM8UfCob2nqvNsdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAh2J-0001ND-Ax; Sat, 07 Mar 2020 21:31:07 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAh29-0001Le-IE
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1583617543; h=Feedback-ID:
 X-Smtpcorp-Track:Date:Message-ID:From:To:Subject:Reply-To:Sender:
 List-Unsubscribe; bh=/p+HKcZ70Hk7L8KRLkDU4RGT31F0s6byCeYgjE9p8Ek=; b=CSbZzAd0
 BIZdwIQUXRMqyFDvcFsmDZcjn4emqd0NdiH1RBxMMT/QlyqiyhkmA1LJ8K7vxkxircjxRS3Rv5tL+
 OVVJjsV4xDvvyzq+iE8DFV1KuiI18rOFkIXrf+gmBrmdX8+ITwd717OWv8ZrVr39XLk7/phE3mDXo
 9ExhclfAzMhuc6MOVN+Pbm+/YTf2h9fJkL3okL37EJ4MTuC5m4UFvluC4bOLv4dQ8xecWo2w6R34A
 yr19reik0UbY2x7yoWmVmkDtSE+z0LwXh5PjCl8f91+onnfa1H1snEdbtlKNeFOilW9sNz/SEWkUq
 +idNOPREf15QEl64x5mmW1tsyw==;
Received: from [10.173.255.233] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1jAh1n-ItkCQc-8A; Sat, 07 Mar 2020 21:30:35 +0000
Received: from [10.162.83.196] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1jAh1m-IbZs0H-Ns; Sat, 07 Mar 2020 21:30:34 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id BA96761D026;
 Sat,  7 Mar 2020 16:30:29 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id H17stFqPpqNW; Sat,  7 Mar 2020 16:30:24 -0500 (EST)
Received: from [IPv6:2001:470:1f07:a3a:dc8:1e2:a6b:6125] (blaze
 [IPv6:2001:470:1f07:a3a:dc8:1e2:a6b:6125])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.blazebox.homeip.net (Postfix) with ESMTPSA id 82F9461D019;
 Sat,  7 Mar 2020 16:30:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blazebox.homeip.net;
 s=mail; t=1583616624;
 bh=/p+HKcZ70Hk7L8KRLkDU4RGT31F0s6byCeYgjE9p8Ek=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=EgGIUGkv9mA3fN5p7ler1Rt/9jMjbXVQxO3k3AEdDCe6GerPIkXRDeXC6B/mPv8b9
 VF6P1xMJ3wEFQgQWy04zVc2IEm7BNZBkiHJ41sfwQXP78QujDPwfLXd9t2Y1L/wHiq
 EZJqlwbhLDrXHGmNgZjOenhNYlbihuNKvhp+f/9CptuD7jZW5g/I6ePdU4Dw5cOjbx
 kUEs2lan+9ajWG9cyV4TPKKGzd6cyhgUOQB4jfZN3tuTH9JlJQelXOVUL50DNek40c
 31e7PPoWzCEUjDQmu/JzgX0/eK1Iw9J+MXWaTlCWEPekIrUhTf8cnPDlIycPCfrs16
 RU1V6AM0uiyRA==
To: Rosen Penev <rosenp@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
 <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
 <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
 <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
From: Paul Blazejowski <paulb@blazebox.homeip.net>
Message-ID: <47f32581-463b-4d81-e222-ced91ecf5c41@blazebox.homeip.net>
Date: Sat, 7 Mar 2020 16:30:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
Content-Language: en-US
X-Smtpcorp-Track: 1Mjh1XmPZs0HNs.ZFJ4rNM2T
Feedback-ID: 316702m:316702a3jAEqy:316702sYZgKcJO3a
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_133058_016916_52C9C998 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
 compilation issue
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 3/6/20 7:15 PM, Rosen Penev wrote:
> On Fri, Mar 6, 2020 at 11:38 AM Paul Blazejowski
> <paulb@blazebox.homeip.net> wrote:
>>
>> Hi Rosen,
>>
>> Would this patch be more suitable while keeping older kernel compatibility?
>>
>> What's the best way to submit patches for packages without having
>> github.com account?
> Post here. I'll merge.

New patch will follow in next email.

>>
>> Thanks!

Thank you

>>
>> diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
>> index 8354f5621..3931dbc34 100644
>> --- a/kernel/exfat-nofuse/Makefile
>> +++ b/kernel/exfat-nofuse/Makefile
>> @@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
>>  include $(INCLUDE_DIR)/kernel.mk
>>
>>  PKG_NAME:=exfat-nofuse
>> -PKG_RELEASE:=2
>> +PKG_RELEASE:=3
>>
>>  PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
>>  PKG_SOURCE_PROTO:=git
>> @@ -29,7 +29,7 @@ define KernelPackage/fs-exfat
>>     TITLE:=ExFAT Kernel driver
>>     FILES:=$(PKG_BUILD_DIR)/exfat.ko
>>     AUTOLOAD:=$(call AutoLoad,30,exfat,1)
>> -   DEPENDS:=+kmod-nls-base
>> +   DEPENDS:=+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
> I prefer @!LINUX_5_4

Based on the discussion we are going to keep compatibility with 4.x
kernels just for this package.

> 
> I also want an exfat package for 5.4. As it stands even though it is
> in the staging directory, I don't think a package is available.

Your wish has been answered ;-) we will have native module from staging
for 5.x kernels.

Thanks to all involved!

>>  endef
>>
>>  define KernelPackage/fs-exfat/description
>>
>>
>> On 3/6/20 1:10 AM, Rosen Penev wrote:
>>> On Thu, Mar 5, 2020 at 1:17 PM Paul Blazejowski
>>> <paulb@blazebox.homeip.net> wrote:
>>>>
>>>> Patch taken from
>>>> https://github.com/barrybingo/exfat-nofuse/commit/8b59e1f338fdd87f1d5a9db2a119a3745bb467d5
>>>>
>>>> Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
>>> This is the wrong place to submit.
>>>
>>> Nevertheless, I'd rather restrict this driver to 4.19 and below.
>>>
>>> kernel 5.4 has an exfat driver available in the staging directory.
>>>> ---
>>>>  kernel/exfat-nofuse/Makefile               |  2 +-
>>>>  kernel/exfat-nofuse/patches/0003-5.0.patch | 88 ++++++++++++++++++++++
>>>>  2 files changed, 89 insertions(+), 1 deletion(-)
>>>>  create mode 100644 kernel/exfat-nofuse/patches/0003-5.0.patch
>>>>
>>>> diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
>>>> index 8354f5621..ebc101144 100644
>>>> --- a/kernel/exfat-nofuse/Makefile
>>>> +++ b/kernel/exfat-nofuse/Makefile
>>>> @@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
>>>>  include $(INCLUDE_DIR)/kernel.mk
>>>>
>>>>  PKG_NAME:=exfat-nofuse
>>>> -PKG_RELEASE:=2
>>>> +PKG_RELEASE:=3
>>>>
>>>>  PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
>>>>  PKG_SOURCE_PROTO:=git
>>>> diff --git a/kernel/exfat-nofuse/patches/0003-5.0.patch b/kernel/exfat-nofuse/patches/0003-5.0.patch
>>>> new file mode 100644
>>>> index 000000000..da28fc03c
>>>> --- /dev/null
>>>> +++ b/kernel/exfat-nofuse/patches/0003-5.0.patch
>>>> @@ -0,0 +1,88 @@
>>>> +From 8b59e1f338fdd87f1d5a9db2a119a3745bb467d5 Mon Sep 17 00:00:00 2001
>>>> +From: Junde Yhi <lmy441900@aosc.xyz>
>>>> +Date: Thu, 10 Jan 2019 21:19:49 +0800
>>>> +Subject: [PATCH] exfat_{core,super}.c: fix build on 5.0-rc1, MS_* -> SB_*
>>>> +
>>>> +In torvalds/linux@e462ec50cb a new set of superblock flags was added
>>>> +to replace the original MS_* ones, and in torvalds/linux@e262e32d6b
>>>> +the MS_* flags are suppressed unless uapi/linux/mount.h is included.
>>>> +As is suggested, we should use the new API now.
>>>> +---
>>>> + exfat_core.c  |  6 +++++-
>>>> + exfat_core.h  |  6 ++++++
>>>> + exfat_super.c | 11 ++++++++++-
>>>> + 3 files changed, 21 insertions(+), 2 deletions(-)
>>>> +
>>>> +diff --git a/exfat_core.c b/exfat_core.c
>>>> +index 143b721..397afd6 100644
>>>> +--- a/exfat_core.c
>>>> ++++ b/exfat_core.c
>>>> +@@ -1757,8 +1757,12 @@ void fs_error(struct super_block *sb)
>>>> +
>>>> +       if (opts->errors == EXFAT_ERRORS_PANIC)
>>>> +               panic("[EXFAT] Filesystem panic from previous error\n");
>>>> +-      else if ((opts->errors == EXFAT_ERRORS_RO) && !(sb->s_flags & MS_RDONLY)) {
>>>> ++      else if ((opts->errors == EXFAT_ERRORS_RO) && !EXFAT_IS_SB_RDONLY(sb)) {
>>>> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
>>>> +               sb->s_flags |= MS_RDONLY;
>>>> ++#else
>>>> ++              sb->s_flags |= SB_RDONLY;
>>>> ++#endif
>>>> +               printk(KERN_ERR "[EXFAT] Filesystem has been set read-only\n");
>>>> +       }
>>>> + }
>>>> +diff --git a/exfat_core.h b/exfat_core.h
>>>> +index 52d05c7..3d023b7 100644
>>>> +--- a/exfat_core.h
>>>> ++++ b/exfat_core.h
>>>> +@@ -45,6 +45,12 @@
>>>> + #include "exfat_api.h"
>>>> + #include "exfat_cache.h"
>>>> +
>>>> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
>>>> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & MS_RDONLY)
>>>> ++#else
>>>> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & SB_RDONLY)
>>>> ++#endif
>>>> ++
>>>> + #ifdef CONFIG_EXFAT_KERNEL_DEBUG
>>>> +   /* For Debugging Purpose */
>>>> +       /* IOCTL code 'f' used by
>>>> +diff --git a/exfat_super.c b/exfat_super.c
>>>> +index 79ff5f9..6452b54 100644
>>>> +--- a/exfat_super.c
>>>> ++++ b/exfat_super.c
>>>> +@@ -2086,7 +2086,7 @@ static void exfat_write_super(struct super_block *sb)
>>>> +
>>>> +       __set_sb_clean(sb);
>>>> +
>>>> +-      if (!(sb->s_flags & MS_RDONLY))
>>>> ++      if (!EXFAT_IS_SB_RDONLY(sb))
>>>> +               FsSyncVol(sb, 1);
>>>> +
>>>> +       __unlock_super(sb);
>>>> +@@ -2142,7 +2142,12 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
>>>> +
>>>> + static int exfat_remount(struct super_block *sb, int *flags, char *data)
>>>> + {
>>>> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
>>>> +       *flags |= MS_NODIRATIME;
>>>> ++#else
>>>> ++      *flags |= SB_NODIRATIME;
>>>> ++#endif
>>>> ++
>>>> +       return 0;
>>>> + }
>>>> +
>>>> +@@ -2495,7 +2500,11 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
>>>> +       mutex_init(&sbi->s_lock);
>>>> + #endif
>>>> +       sb->s_fs_info = sbi;
>>>> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
>>>> +       sb->s_flags |= MS_NODIRATIME;
>>>> ++#else
>>>> ++      sb->s_flags |= SB_NODIRATIME;
>>>> ++#endif
>>>> +       sb->s_magic = EXFAT_SUPER_MAGIC;
>>>> +       sb->s_op = &exfat_sops;
>>>> +       sb->s_export_op = &exfat_export_ops;
>>>> --
>>>> 2.25.1
>>>>
>>>>
>>>> _______________________________________________
>>>> openwrt-devel mailing list
>>>> openwrt-devel@lists.openwrt.org
>>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
