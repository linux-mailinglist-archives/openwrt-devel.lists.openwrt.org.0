Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F751DF0AC
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 22:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Sf2+XRtoJJQQTB6hMSwV8bDLsUpZ+UIOAeTM9cJPmM=; b=aH/
	KATtkXmonTetNL/6akdstCONQfAZR7i7P10FLnGSiqcuamF7wxyi+vYKBFm1EARvlMjf4GsoJ/lph
	c4O+BUUSgPShSbyUHqI5FHCbdJuyC1Rr2o9WGJiuqSmQRhTQbvA7nGrPxazzJmDIkDjWkWX8tzyjm
	WPBvzYtsyU9a156Gm1id7M58G+k1aK1vmTBnagZHE1q58aH6Vr+qkdFbBzLgFTgjy5oMHWX4oWiTp
	cS66aU5aw89VE/aD8xNzyvNx42HhLzEzl/kpmdZpoEfM2LdJ4CCxztiV3ZGhhkjUZBnjdkkMBETcY
	U3MYQfG7cDxLfGLOePv/vOBsAc1QrLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEP2-00036k-4r; Fri, 22 May 2020 20:36:24 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEOv-00036G-Fw
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 20:36:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id c21so7251154lfb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 13:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=B3fvA8SVez6R+cEzgOOHwyX2TDy+yueJh5SRRxgc2rw=;
 b=dMBwv/rsNqeL/8k/rd76xGVJlIQ6ohimKIbhc4aKODxUVMasvg9wvFDlkaDjW60Hio
 zNfg2I9mOiBye3OMqCXzH5LyqwDk7p39WzesIDAVGUGuHcS0vU4NR28/+37wqcsV21B8
 ydDw3zjSYagNRH6kBphUSXXrE7l3CfGRO/HZjFWFQSYsdHxIYlt5NdOGveTWjFyuvaQT
 2YnGEPKBhrccTgVuZ+YEgQinpuYi/6rUlqrBEGVjqR9vk723+5H+shVvGF+Bq0W4siCx
 U8Ur+tJqbdzBJMaKCilEPDioHavI1EsEYJITs8j/0CnAxCZOeLkXKcBJRLa6rhyFDVe2
 w9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=B3fvA8SVez6R+cEzgOOHwyX2TDy+yueJh5SRRxgc2rw=;
 b=nRrEwb2RDjAJUwBSdk6RwojnuIpEz0BuAaUmWDSv8/af5oxbHANuMydaKUsgLlpK5D
 DJ4CgaZxMHuvjzzSWEqEj1RacEUDIHesIfSZLk/L+JScapOD0xeh+XzNzrRd8NquWZKV
 FAvzHRbB2XoJjG8zAmOV65zKLi7X+fJCnO61xyMOHK9SO/GYTNtebmNsgVxBpCPRSyDQ
 oLwTTAcFa/t5+6eFjkQ49x1buq125C+gVmgRhq/mB/r34YRFt5g8rLENoZ7+0MaDzpxw
 pNYSbmG1lWTUfhds8fI9stLp3jSnkwjkm9Qci2I7OiQjacWtywI/TUGhU3BpMOI6YDd9
 D6WA==
X-Gm-Message-State: AOAM533m8gmmPbamI9dreOrv+djaKu3RRpkVz+j24ciUvQMW0ve2CFCh
 NzTLFQcw4KPZxB1TVSVpav2i7HI+HKMoCeSiFn5/f0jDPFw=
X-Google-Smtp-Source: ABdhPJwglSx5jzT/96crWw3FP1WI1qKROPdEpgCDqDMl+z7aw+npjWIuN57G8ON/uvcUSkeo7FA3EoxLLfJ6erv8f7s=
X-Received: by 2002:a19:6cd:: with SMTP id 196mr5957127lfg.216.1590179775437; 
 Fri, 22 May 2020 13:36:15 -0700 (PDT)
MIME-Version: 1.0
From: Olli Asikainen <olli.asikainen@gmail.com>
Date: Fri, 22 May 2020 23:36:04 +0300
Message-ID: <CAK9yiZD=ZSSn6Bj5n0gyn7rBK+_DVnUHpZc1xqZWcQBRAcAG0w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_133617_547581_91489129 
X-CRM114-Status: UNSURE (   4.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olli.asikainen[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
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

I bisected this earlier and the commit that breaks USB enumeration is
fddc78bc116bc043fb5cd92dbc45cfd054c21af8, which bumps the kernel
version from 4.4.74 to 4.9.34.

Unlike with 4.4.74, the device is reset on driver probe:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/usb/dwc2/platform.c?h=v4.9.34#n623
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/usb/dwc2/platform.c?h=v5.4.42#n443

I am fairly certain that we can safely remove
USB-dwc2-add-device_reset.patch. I have also tested this in in 18.06,
19.07 and master, and without the patch, USB enumeration is working.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
