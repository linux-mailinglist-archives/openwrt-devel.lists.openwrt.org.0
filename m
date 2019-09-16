Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DFCB4301
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 23:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OHBzpFxLFK0IfI/TjqFB6tJnOM2pvgQmHHHSsC59bXE=; b=qTjFtlZoWTSuaU
	qWX551ajRQOBPKBOrxfkQ2NU4fOVs8NU+Q9AI/ywxPItN84LwTj3vDbwxoYOkdEtJdOLVzaX2wUs4
	t2xFu+whdtoVvuNvLCG+in7j0EGeCLenH0X1tIMvlugcHJO/Kg9bTFcUuoNxqbmMMt/rAVAmLmCL9
	L8GRlHPHjwsxSMSY2CutPq9pAGFoROx0xWd7q6gIJc3nETCXXM+g+3NyzTEe3Pl+XBHgZvgnF0/B3
	rdZTnHbOjK1lxkUfqfW6m/a9OEq1s2lKbvmYK0f0cb0Jr54Yd9B3ubhwaJWhbNxlW896V1wlXzxiL
	7IXFwRk6zyPczZIqJI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yUr-0001tA-5O; Mon, 16 Sep 2019 21:25:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yUi-0001sh-JH
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 21:25:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so476438plr.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 14:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=sVG48jSPJPcYfeUG8Qvdosn4ByDGVB8ChlsGFvmlykg=;
 b=fnl+VVP4HWoteuR06Jr2YEnOX+nb7D7sccwtc0K1W0cGjHaEmVQe14muxiESs91sYY
 ljUJg6e8AZ3pY/lLDwH/TVTfNG+r/otasDev/NukP3c+NoyaFFQ/S5hXPR7cumbm4r7W
 oKzqAqJtxuJ3/SvE8IvK1IctvpJlClHTMiXLoaVYLCk7beJLN31IuRmaTmeR2wIyBw5y
 nKPDE2w2W/arxlUyLuTjSTVoIFHrXGNoSf7cSQ+AqEXLQZM6jbgtJPJOVrl5MH2bYBHQ
 CB1kGXigt3Rwc7SDhs/ZIx3IdFlIZ6hiO3Klfk/3BTc220XUsalXuSCk+OTpqPXkBlJ0
 UAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=sVG48jSPJPcYfeUG8Qvdosn4ByDGVB8ChlsGFvmlykg=;
 b=fNCiroqfkiHqmyJmhWGfEA4KiNTiujkf5S7bePQ2UYruzn/iZ/8QP6gdCnfugibw6r
 VNCipC3Ko8xg1oZxF94HkUOF5qTnMnKqPjSpEFuakaODlxxDHieaBTv/8OEAEUiIiJDK
 jYBkOlGjGAbxxiBJfsqtnVhwU11CbSQHoNfWdXGPNkNtcv+9ZSyNnurg/duBNMqwdJB9
 Ft9psk5sHTtjpCu3XI3CAGiFT/I9AKmgYFqfmBIfwdLtGHu34wvzniU8WN0+onaPxHbx
 vyFbklHSms/B8dUllm4LZ5GuQDUJdgJP+ARyAZU+XZsduggAKPbZ5sQ9+N0SVNOUj2TW
 bXJQ==
X-Gm-Message-State: APjAAAVFLrDuDuT2bTebH6xSeUa/UefJlZlF5keTwwuvUyZvEMG1gavA
 gR2zRJcM7KQH1A4o3ghElc14YY7aJ/E=
X-Google-Smtp-Source: APXvYqzd9Qjcvyu34LnJdXcKXXznPg4ZjlbNtGmXm8UvHmj+t8gAhVxOFNQIzk9dsEb4NQA6A1D66g==
X-Received: by 2002:a17:902:7485:: with SMTP id
 h5mr195968pll.240.1568669110934; 
 Mon, 16 Sep 2019 14:25:10 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id 196sm22536pfz.99.2019.09.16.14.25.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 14:25:09 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Sep 2019 14:25:08 -0700
Message-Id: <20190916212508.29943-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_142512_637038_1AAD7B9C 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] uClibc++: Remove faulty patch
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch was originally added to fix compilation with v4l2rtspserver.
Turns out it was v4l2rtspserver that was broken, not uClibc++. This now
causes issues with a different package where the arguments are being
split.

Note that with this patch, shellcheck throws an error:

SC2068: Double quote array expansions to avoid re-splitting elements.

More: https://github.com/openwrt/packages/pull/9972#discussion_r324878373

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/uclibc++/patches/002-quote-fix.patch | 13 -------------
 1 file changed, 13 deletions(-)
 delete mode 100644 package/libs/uclibc++/patches/002-quote-fix.patch

diff --git a/package/libs/uclibc++/patches/002-quote-fix.patch b/package/libs/uclibc++/patches/002-quote-fix.patch
deleted file mode 100644
index 49e7ac3d14..0000000000
--- a/package/libs/uclibc++/patches/002-quote-fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
---- a/bin/Makefile.in
-+++ b/bin/Makefile.in
-@@ -44,8 +44,8 @@ define do_wrapper
- 	$(Q)echo '	WRAPPER_OPTIONS="$$WRAPPER_OPTIONS -nodefaultlibs $$WRAPPER_LIBDIR -l$(LNAME) $$WRAPPER_LIBS"' >> $@.tmp
- 	$(Q)echo 'fi' >> $@.tmp
- 	$(Q)echo '' >> $@.tmp
--	$(Q)echo '[ -n "$$V" ] && [ $$V -gt 1 ] && echo $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR "$$@" $$WRAPPER_OPTIONS' >> $@.tmp
--	$(Q)echo 'exec $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR "$$@" $$WRAPPER_OPTIONS' >> $@.tmp
-+	$(Q)echo '[ -n "$$V" ] && [ $$V -gt 1 ] && echo $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR $$@ $$WRAPPER_OPTIONS' >> $@.tmp
-+	$(Q)echo 'exec $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR $$@ $$WRAPPER_OPTIONS' >> $@.tmp
- 	$(Q)echo '' >> $@.tmp
- 	$(Q)chmod 0755 $@.tmp
- 	$(Q)mv $@.tmp $@
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
