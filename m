Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B194BCEFB5
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 01:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S6teh9YPGvgtEtzLZ8d/hh5nmLfZ/VHgexPGeqbCrcU=; b=R3b
	1942eHjgWJYGeX/ETxftCrmOQk1YlkS/4LlKCR2FzvWSRKIVgmsWv3kra0fBwuVjQbX5/Tbtsc2Xm
	iVUOSw6NSsFxsDwhj511DJIE81wyD/LyRo5h1Vyxdwk1+2SPH2BI9kukSGDwsEr0njKsFCxqA/8CO
	FplY7maTCoUP1/CFBQ239CqV6uZMrBcJLhOzMLckVR0YcxzycLdnqfC1bW4qSKPI++y3EURcJV6Cb
	iqwvlHaCWkDWA5G/n6xRzqyt+YW5rwJA8Z81VcEquj7Uefr1q6pKJVzBzcVICvK6RItdLj1wTqlVT
	5pAFhwidop86M4oyapdyR8KPAjtnXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHcfl-0004pl-V7; Mon, 07 Oct 2019 23:44:13 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHcfb-0004pL-Gf
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 23:44:05 +0000
Received: by mail-wr1-x430.google.com with SMTP id j18so16407156wrq.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 16:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=17x+l3yCvwjHUTSq+yGKhWc4yKWGtC3lC4KujsXhiHo=;
 b=FRMJkS5Vrxl4trJZerXxE9OadTYkWCv3iSpJqqf0H/fewEWDq+L3M/oUFZYU8+2KXL
 UdH7h1/giYqZvGgR5Yhmo8G3zpfo/zy4zwS2c+qNSQ1sM8gdAKIpensowrltH9ZOthUh
 utRiFziGAjxUxJ0LUaPNiCSXOM4K//IgiXnxg/aSU3JWOMfHlB2UmlIf9bOa2/6MvnM6
 ThAuLRZ3Sgz2XuGPzonBH8RYTGs8paB6ffivAAbe1+ZPinT2Rs9WRaaHTGZcQri/q3Ed
 1PXRmO9yDS0N38mHVrC6uK0iXT/FXyJBZR2TMj8lh4uwB9X12MWRjJNLcgYjx474egEd
 FvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=17x+l3yCvwjHUTSq+yGKhWc4yKWGtC3lC4KujsXhiHo=;
 b=P+8oYjBoSs+DpkBZ6uptxl4IV2PqoYrrwACU5LAz1DsIlvDOPYIm3jskZAtqJPyd+a
 3e/J8Id+hTjDOcskeKHsfGOESzP7mjOdH8pjThl/EMJ7QNdWZYZKseCO6hSW0wZMRtP7
 s1HHemVWlL36D7wJdCeYX3xqbIpVQ0D54TE4p4HZpIGZm3Un+63+ry2PFsjTvyBzCCgr
 F5chYyzJg4QFwJnSBcY9mJYKMhEwJvcuR2myQRtHXuhbbhNo+1ue10L7/Pz3+GVHVTjq
 3IAh+NMLI3UShuAaK0CKwnuGPcTzo6uyDST0SlYGGvkFgyeJRBqvfsi1n4LdXOJQom5a
 goMw==
X-Gm-Message-State: APjAAAVIncX2aFvFGdQKdibyfW8MZWZJ9tUFSr6qpRIlfmLScoYEy1ug
 jrzkXsCpxZe1ZdlIpkaM74re1Kpn7WgaOfw4kAfEF4fZPUg=
X-Google-Smtp-Source: APXvYqykOvKyP4m+L4rZl2J+h2wK/2pvifTPXiJtE7fOmSBVxct86xJmrwyJu7E7EXOiidhgJ/BuWnqgk/PhAX/uDzI=
X-Received: by 2002:adf:f751:: with SMTP id z17mr11558611wrp.199.1570491838060; 
 Mon, 07 Oct 2019 16:43:58 -0700 (PDT)
MIME-Version: 1.0
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 7 Oct 2019 16:43:47 -0700
Message-ID: <CAJ+vNU0sRbJd1MZAAM3q+c6AFUhxVYrqRyhD4NScTSP0kTBD+Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_164403_691182_FE85A5A7 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] troubleshooting kernel bump from 4.14 to 4.19
 causing userspace crash with libgcc_s.so.1 missing
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

Greetings,

I'm trying to bump the octeontx kernel from 4.14 to 4.19 which it
seems should be trivial but I keep ending up with userspace failing
with:

[    7.080332] Run /init as init process
Error loading shared library libgcc_s.so.1: No such file or directory
(needed by /init)
[    7.120297] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x00007f00

I'm using the simplest config I can think of which is:
CONFIG_TARGET_octeontx=y
CONFIG_TARGET_ROOTFS_INITRAMFS=y

after building build_dir/target-aarch64_generic_musl/root-octeontx/lib/libgcc_s.so.1
is present

I'm guessing this is a kernel configuration issue but I'm not clear
what it could be. Comparing the bootup with the same configuration
using 4.14 looks pretty much the same and nothing glaring popped out
at me.

Any ideas?

Regards,

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
