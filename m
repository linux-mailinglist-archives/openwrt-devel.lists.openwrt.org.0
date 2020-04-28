Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5C91BC443
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 17:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QGW9O0a5DqtlvXgvnNiw8inIIegk9LKQ3A+bBy8V5o=; b=qczsfy1U2CG+sg
	38uFB4A86RCEAVNnxNCRX/Ew/JJrLZFQShkczz0najT2p/KC9VmJtIae19oiwihEv/dL9xf8x4fYe
	cNFNGektnYPNVkOaBb435V/Io7Py61F/uoWYxisAQzt49UazdMsJjRWgES5+BIQG8UwVfbqreObfr
	F3ODRzMrFvSD451CgGlnpJ+QpmOolPUFSNv3Pml/XJAnF6+6Hik+isQ71RKfEH+/F6T+EPhPzJLIM
	ivqOG1UAoUXhzFx0MYqSJJrwjkFpdDJgUSIEbiR8itmFtekBm1NwuHs88nk5GWWqrPwKSFwEC3+6R
	JyoVwUeI5fvrZkWIdWBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSck-0003xU-RB; Tue, 28 Apr 2020 15:58:18 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTScd-0003vs-MX
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 15:58:13 +0000
Received: by mail-wr1-x42a.google.com with SMTP id f13so25219043wrm.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 08:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=KNBFdDxfMNqYYFBaU60+0mtqgU3zC1qmjOH+Jog9PmU=;
 b=srKMiMTKj+5z1FhxoKtwA8J2/5uFzERyKyQqI5S3NrXaEtbYeg36tWWNKd3aKib9U/
 3fN9lDUo/qHsUHKhHi7zEAEX9fX9mANg12kC+hwFuJcoAeOYrc8D2OKWjwPShe3Rxj7k
 Fv9dn9c7PNmpOZxwCG4v7OHwTVTPqpXAk7+qzldkFfD19Ihz9txdyv80ImVNeWhlS0Mu
 XCN2co/1KXAVYW2AhBLrqmT1+q1DM4/OMJW9lYroa3AvZXqZAtku7CodstHevZ0izmgp
 6xXayCqIpIV/34ac7Yl2ORu8OFiCnxaJeIRPvdxEY9bU8Q2aCjlMZKBhFkF5BFYuZq7e
 2RlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KNBFdDxfMNqYYFBaU60+0mtqgU3zC1qmjOH+Jog9PmU=;
 b=BMCirADabOnzYTxvhjFjE0dAvLsW1xLB0n6bed5SbsB0XQkINFK4SmiC+BGrk+MOiK
 IiuADzCoOIBLqfQ4HphpVAGC+XVKcDshqsk9xI0lIl5B/96cAZtHCBmAsrFLHzOnDPcU
 9R8puGFDrwSY9GY9bzaOaJ7Ne+twhHResi7YwEq42hl+DVf+qeqfwrtVLDGiS6gT6T9S
 YlWDhL+4eclnbR5xo1trQQzBbxPqSFZCWbAyRX8rux4fsxLgPF2I1zTDZfJxD010XEJp
 H6MwBUdLRYCedXDPq3SVPE09qEgSdmCXCJqIYDwbO7uqJXzEYFdCnXWeaB1faGnOsGsA
 Ue+g==
X-Gm-Message-State: AGi0PuZrU95+47K73ZiCYgv2yoVeIxe968D3rtoO7XUqZ973MyUYO5rn
 g3RZdTlOixQbV1rjEDVFpEkW+BlK
X-Google-Smtp-Source: APiQypK+OinGkNhKvdZ6niu8svkUoCw0nL4Ah3klSPi/s6inDIRCCl7Ga2EFL3HXVXyuE1AoPuplpA==
X-Received: by 2002:adf:f24c:: with SMTP id b12mr34012269wrp.359.1588089489819; 
 Tue, 28 Apr 2020 08:58:09 -0700 (PDT)
Received: from localhost
 (p200300F6671271ACF05436978CC415D4.dip0.t-ipconnect.de.
 [2003:f6:6712:71ac:f054:3697:8cc4:15d4])
 by smtp.gmail.com with ESMTPSA id c190sm3982486wme.4.2020.04.28.08.58.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 08:58:09 -0700 (PDT)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <75d8e585-74b0-c24c-0ea5-4243df88f2b4@gmail.com>
 <002701d61d6b$9bab0170$d3010450$@adrianschmutzler.de>
From: e9hack <e9hack@gmail.com>
Message-ID: <49006edd-9a8c-5823-38ae-0e03d286a0d0@gmail.com>
Date: Tue, 28 Apr 2020 17:58:08 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <002701d61d6b$9bab0170$d3010450$@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_085811_736455_5B5B16B7 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] kernel packages
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


Hi,

it looks like I can make dependencies for a module itself depend on a kernel version only. My issue is, I've to add an additional kernel module to lib-lzo, which is part of lib-lzo in kernel 5.4.x:

diff --git a/package/kernel/linux/modules/lib.mk b/package/kernel/linux/modules/lib.mk
index e14c6b31c0..ee71cf610f 100644
--- a/package/kernel/linux/modules/lib.mk
+++ b/package/kernel/linux/modules/lib.mk
@@ -109,9 +109,10 @@ define KernelPackage/lib-lzo
   HIDDEN:=1
   FILES:= \
 	$(LINUX_DIR)/crypto/lzo.ko \
+	$(LINUX_DIR)/crypto/lzo-rle.ko \
 	$(LINUX_DIR)/lib/lzo/lzo_compress.ko \
 	$(LINUX_DIR)/lib/lzo/lzo_decompress.ko
-  AUTOLOAD:=$(call AutoProbe,lzo lzo_compress lzo_decompress)
+  AUTOLOAD:=$(call AutoProbe,lzo lzo-rle lzo_compress lzo_decompress)
 endef
 
 define KernelPackage/lib-lzo/description

With the options, which you did mention, I can create a second lib-lzo (eg. lib-lzo-rle) and add the dependency to zlib:

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 43709228f9..d727719882 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -861,7 +861,7 @@ $(eval $(call KernelPackage,ikconfig))
 define KernelPackage/zram
   SUBMENU:=$(OTHER_MENU)
   TITLE:=ZRAM
-  DEPENDS:=+kmod-lib-lzo +kmod-lib-lz4
+  DEPENDS:=+!LINUX_5_4:kmod-lib-lzo +LINUX_5_4:kmod-lib-lzo-rle +kmod-lib-lz4
   KCONFIG:= \
 	CONFIG_ZSMALLOC \
 	CONFIG_ZRAM \

Or do I've another option to solve this?

Regards,
Hartmut

Am 28.04.2020 um 16:45 schrieb mail@adrianschmutzler.de:
> Hi,
> 
> @LINUX_5_4 
> @!LINUX_5_4
> +LINUX_5_4:somepackage
> +!LINUX_5_4:somepackage
> 
> further details:
> 
> https://openwrt.org/docs/guide-developer/packages#dependency_types
> 
> Best
> 
> Adrian
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of e9hack
>> Sent: Dienstag, 28. April 2020 15:32
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] kernel packages
>>
>> Hi,
>>
>> is it possible to depend on kernel versions in
>> package/kernel/linux/modules/lib.mk?
>>
>> With kernel 5.4.x, zram needs the additional module lzo-rle, which is part of
>> lib-lzo.
>>
>> Regards,
>> Hartmut
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
