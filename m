Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017EA4DD93
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 00:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RCx3ScZ10w1DmC18ryqX+X8hOxPTY2HBguqBnh3GQEk=; b=ZA5736RUWhxJqD
	XIrpJ7Iv30+8Z8abWk91ddYoMTe55p3LKfOLag1m+UsEAu7WJYXscB4sSuiEi4qQrXMgXwyFrcSXc
	U76ILImwDbYP73Z9qE/ArbwPdlznmiR6P6/X4SlPvQW9RKEdkz7dXdp17dqur1jFcR0eYpITczG7Z
	es3qMOCMYfskLhCbcGswYHQrtnLQHShVnuLk/6vmX7II6WYDJdMqe/pCNOV+LdHFaXjCxULi1QV1o
	hsXl4nibKEewGRkfWslQ359qKsbfC8Rm/myf8BrEZOxX881I4amc1KN00zYGJCAbavVmzPwXyDv0Q
	ekW3MIut939Pn+rFt41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he60Y-0001z9-44; Thu, 20 Jun 2019 22:58:18 +0000
Received: from us-smtp-delivery-195.mimecast.com ([63.128.21.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he60O-0001yO-4R
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 22:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datto.com;
 s=mimecast20190208; t=1561071484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NGBMty73FkDUATNO3A+jDtLdjdWOw+opIIJqnBea060=;
 b=IGdL6+gWHn1T+hEAzcef6S0CdUZ/gtB+qpx4Ez/2wW4VH8sIxg1FVWhWrXM7t+h0Sic3yn
 ne8DmC085JYbmgrU8LTeW2iiUjK/YvaN6visCXGJ+jHeDiEpWic0y9zTfnGy6P5qSCC/Jb
 gNRBURlaHRq56P1PT8VJy6lnrPIKuT0=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-E7Xy-FIaPOKIcGYPI-fBgw-1; Thu, 20 Jun 2019 18:58:02 -0400
Received: by mail-pf1-f197.google.com with SMTP id 140so2991508pfa.23
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 15:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=86Ri0LF7bZK92WCD7fbYML5TfsL8NCh4aTd9crIts4Y=;
 b=BNznPyTIQ1o40exthmfyzpEMeFTHiwIAhPbTFsszlS7UO2S6DqsgGajafeXmbbU4fU
 WdqLe+HVDTsLJYWTpS9BSpGPHfL4AJwHzNaV+oJJ8e5CyOA22lH8PSed1EM6eU+M0Je8
 KFDwOOFJPNoTmU1kDmmSZNu5Re9VjgX+03ZPOEqXEQtYsd8gBMQurjy8Ot+4mj49EvGs
 FNQu+FcOImXzhlof0Oi/nHReDhvwLYljwo7ZiASUUOHf7XKendsZ2MiZVAnSqgVZT5ka
 cG1ve1qi1TyF5cCFVBY7YQiJO0spLt8Jxks5puMm72dsLqRqVeq0Gy8fOIGM9ItIZxvA
 qiOw==
X-Gm-Message-State: APjAAAWQE9j/4bEVgAREi4un24bLNq9PEC1m2f/RArGVWDd9DymFr17k
 PV68kf8cayDtXRyHHaDLB84tTZBa3Bunbe6gpjV2JfICTMS/YQsXYiSD6YtS2C3k1OtEZTN+uc1
 1N7N8PdcuxKOOKoPOW9InubQ1jdvY
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr2020450pjt.82.1561071481574; 
 Thu, 20 Jun 2019 15:58:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyC9oAaJG4DfgHdNCHckjaHj9PCGmjDMaCMihvjKs3/ZC7wGjHlWhfvIrAfdlGFv4hIm9LmJg==
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr2020445pjt.82.1561071481444; 
 Thu, 20 Jun 2019 15:58:01 -0700 (PDT)
Received: from jstefek-build.datto.lan ([66.193.132.34])
 by smtp.gmail.com with ESMTPSA id g8sm535674pfi.8.2019.06.20.15.58.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 15:58:00 -0700 (PDT)
From: jstefek@datto.com
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 15:57:54 -0700
Message-Id: <20190620225754.1685-1-jstefek@datto.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-MC-Unique: E7Xy-FIaPOKIcGYPI-fBgw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_155808_308709_8ECE3C1E 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.128.21.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ramips: Don't override the bootloader
 cmdline args if none are provided in dtb
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
Cc: Joe Stefek <jstefek@datto.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Joe Stefek <jstefek@datto.com>

This change allows cmdline arguments provided by the bootloader to be used
if no cmdline arguments are provided in the "custom" section of the device
tree.
---
 target/linux/ramips/patches-4.14/0100-prom_fixes.patch | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch b/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
index 91ac3b22c4..ae42e72070 100644
--- a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
+++ b/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
@@ -39,19 +39,21 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
  void __init plat_mem_setup(void)
  {
  	void *dtb = NULL;
-@@ -82,7 +95,11 @@ void __init plat_mem_setup(void)
+@@ -82,9 +95,11 @@ void __init plat_mem_setup(void)
  	else if (__dtb_start != __dtb_end)
  		dtb = (void *)__dtb_start;
  
 -	__dt_setup_arch(dtb);
+-
+-	strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
 +	__dt_setup_arch(&__image_dtb);
 +
 +	of_scan_flat_dt(early_init_dt_find_chosen, NULL);
 +	if (chosen_dtb)
 +		strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
  
- 	strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
- 
+ 	of_scan_flat_dt(early_init_dt_find_memory, NULL);
+ 	if (memory_dtb)
 --- a/arch/mips/kernel/head.S
 +++ b/arch/mips/kernel/head.S
 @@ -85,6 +85,9 @@ EXPORT(__image_cmdline)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
