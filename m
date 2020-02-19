Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A551651EB
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 22:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FsnAb3Qn45yo4/q/z0sfWlSrDVjRuUO+X7eVPLcGGm4=; b=u/2VH4BNfmCyeq
	ncRdKLvXGRySjSeU98ZxSl0dXaOtct4GApSaL/47KBzwgoYcrK0qXZoDD1dgf4HPzL22Vl0Eg3dt+
	bVZlwuo9cXMmpp816xc6Qc89AOa/qMB4gSAcj2ePcBlTfcAvbrO7RE4x2Fd/cR7qH6U+jDQeHyzY1
	UOIQdO24Ak96tM6RjyZxg9XZtOWRhMNCjjNVoGFwI4v8kGlVKzu/jCbxWe8PwA2hYCrR53oG/8XGl
	BKBnylas+zY0D58Y+588qDPTeO6k81GvYFCVA7Q/iC6Pg6oOmnHEcHR/CSMf0CcRjroTkw2bx9GeL
	mDMAWzzRoDCSWETbaw2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XGu-0003wa-5a; Wed, 19 Feb 2020 21:52:44 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XGl-0003vk-BS
 for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 21:52:36 +0000
Received: by mail-qk1-x72f.google.com with SMTP id t83so1689637qke.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Feb 2020 13:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MLo7NUW9tdqPURqHwO6ARpgmuEiXcmPrwSqQlh5lmDg=;
 b=ir6zP+sIDGpWFHtzyPPQniiEtH90euQLJzH+WdpVAKf675aiIIIcV4iFEMXkAXN6/p
 s7Vi6bIZ2nORtAUFOG7/rimp7kT1FCjPmczteU6ARHRp2i6g7Del7me3ur91KhyIYszM
 G0N4CxzzkdKgfwRzfcGPNNe+P4n9s23o/IZj5uXfuxkje0wok144pakKfmK36B0v55bT
 E468L/paxbNcLOUQ2uje578t2blMsrgk9RTgaDhGeq8aTRHriN/3waIWFnSY31aVmnKD
 i9JguEPZ7DAhUAkH0DZXhic21DPDe2i+s5RYrwckbc9/5Tsz1cx4DIObvuelXThOdTj4
 Nphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MLo7NUW9tdqPURqHwO6ARpgmuEiXcmPrwSqQlh5lmDg=;
 b=pHigEyy9awsHr9nV8f17HfEVhfqhRjy913XvKu8f15P8eTiBbcQPkhXxkD8oYTcs4q
 yrvmy9pOkMG43kLjYGXDQPXu5Ah82R+3aVBxSc5Xv5pKDGs/FlY9BKdkturKK8ZbzPeM
 unmVv5ByuHu/Z0JAZRyeTe+XURxz6RIUzZHWp3QY79kNpXWfkpZASMLsUgKBDcxgzA21
 DkInP3ZapbKnEMENRAzLeyuoxdFfJxqjEh8s6s9EmIErnM3aleKhsh4RlheyegIWlyDs
 vxIT+m6r5efzfmFjIIZGLqITKc4FK3Trif1cVMgyGJhHJOseBkkwUdF8dCiFsg2z4a5e
 Clbg==
X-Gm-Message-State: APjAAAWaTsn5xv+a11ePeh36KxWpuZY/jLhennKgt8xZB77o3fHeLlCM
 RXaBMMdjFrALFaWFzqPRuCu1eQY5
X-Google-Smtp-Source: APXvYqwbj8yasF00LFXe+I7x9MyEiaLrAsMA0lHqkiVD3YOp6cb+8wT69hRl5/Tk+F+b0iXzV/UVaQ==
X-Received: by 2002:a05:620a:4e1:: with SMTP id
 b1mr25740129qkh.222.1582149152493; 
 Wed, 19 Feb 2020 13:52:32 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x3sm714904qts.35.2020.02.19.13.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 13:52:32 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 18:52:10 -0300
Message-Id: <20200219215212.31263-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_135235_399607_20C19232 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/2] build: Avoid 'Argument list too long'
 error
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

After building all of the luci packages with all of the translations,
if I either run:
'make package/luci/clean' or 'make package/luci/compile', I get:
make[2]: execvp: /usr/bin/env: Argument list too long
make[2]: *** [../../luci.mk:285: luci-clean] Error 127

This is caused by the call to scripts/ipkg-remove with a list of over
2,300 packages matching a luci* wildcard:
$ ll bin/packages/arm_cortex-a9_vfpv3/luci/luci*.ipk | wc -l
2307

To circumvent this we can use xargs.  However, using echo from the
Makefile results in make calling the shell with the same 2,307 file
names.  The solution is to have make write the list to a file and then
pipe it to xargs.

To avoid creating a file every time, xargs is only used when the number
of files is >=512.

As an optimization, to avoid calling wildcard twice, I've defined a
RemoveOpkgPackageFiles function, and added the check for an empty list
there, so that the call to opkg_package_files would only be done when
the new function was called.

I've put them in separate commits to ease an eventual reversal or 
rejection.

I think that changing the wildcard pattern would be the ideal solution,
but I could not come up with a pattern that works.  My first idea was to
change opkg_package_files,$(1)* to opkg_package_files,$(1)[^a-z-]*, but
it would fail when the package name ends in a number, such as
libnghttp2, ABI is 14, the filename starts with libnhtttp2-14, and
without being able to filter the -, the result is the same:

$ ll bin/packages/arm_cortex-a9_vfpv3/luci/luci-*.ipk | wc -l
2306

Another way out may be have an exception just for luci, which I may do
later, because calling ipkg-remove luci* results in 4,614 runs of
'tar -Ozxf'.

This was compile-tested for mvebu, and checked by adding $(info ...)
tracers to the new functions and to opkg_package_files in
include/feeds.mk.


Eneas U de Queiroz (2):
  build: package-ipkg: avoid calling wildcard twice
  build: call ipkg-remove using xargs if #args>=512

 include/package-ipkg.mk | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
