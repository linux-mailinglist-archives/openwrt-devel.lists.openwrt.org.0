Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240B21971F5
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 03:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BebFPhPxHEj7RUPrTVQKFZMd6xj3FjgKrSoSLAPsqCg=; b=XkQamZxhRTfgs7
	vck9Ma5diFDxJnKKCoU7R06BIOErlmAC03zHfQQiLReIxugGHR0mz58LyvnT1VXCXdbxJNzfw9gQh
	w/Y9SmSPAACc7UswIgz2IuBMybxxfGCwFN0EMmkT1iQEx65kVzEDpHipgfDmtHm9iqIezjoPM1kS2
	1exm2HwbwhSRQIXgjxsauBH6Uui+urT/5XNWc9Vo3k/Pe3/MF6s28yqZvV8lss5cz7v5D9vv1vign
	RzRFe8vSLzWfzMDOZDrx49fK5WWFXAv7C1+I3GhZT+cDJW8dNqfcD5GOMHRk8Ne46UgYQShPszvxG
	mcLxOsOmAWA590URxGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIj0D-0001Dx-M8; Mon, 30 Mar 2020 01:14:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIj05-0001Dg-U4
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 01:14:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id c12so3244115plz.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Mar 2020 18:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RAFockQ4v4ozJrpttb0Nrv92PX176a8gD8PGtiX43bU=;
 b=c0MUIZv3/5kGrEWePGy3aTCaDwwinjyg0XuxMT23xgYU54UNDmdlhm7aNFZf1WfAbR
 DW73V/GhkEM9AfZfm1aVkgbiQc7DvYopd4WtB2unuTVDap6UdrvxgDO08/97BqmyWuly
 tfAgasR3MfxIJgssh7zFF7TaPZUo/7uQIu4yHCvAK9bePRe6NA0ofYdrThsVRNd0e8Dp
 IRPhcwp1mWnQlWCUhrdm/QhMXYeMFSyBNyyn34ZWXAytEFV5qhK/rUE4pRTZrULqaaxw
 Enc9+HrrVyULfKHy2VnTxi3Yq4WE+F8R+R0UsHoSuo5MNNt1LmmhrQCOA/ALBlulOehS
 wBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RAFockQ4v4ozJrpttb0Nrv92PX176a8gD8PGtiX43bU=;
 b=n3vDP3Eg8MvB8zAOzOoEuumt1ikh7J6cH5byVjd4IDZoQs/DemLXwUqsw/W+4rovsc
 flJzHmFjy0RfNnSOV33hSKhBIMP8avMdSN+QVwGehkGSbt0bR3SR2vBEdWpXsYDSkVkz
 0AVj0F0xsiNIdXv8Vc483ZS47wL47GMrJXTkDQKWrrWJ3buuZHDeOF/m1PCrjRVz/vJY
 IKW5xI/2SS4lzeT4co5jphdHrBADKTquvxI4Dl5cQoz9B8zIuMBtv0MLXaDDTSlUZVdo
 +D2OgodRgqf89YeHZV+JGCEHpeXqMJzkw88+BYaokII4TJYWv/raEddMNn14G4/dJ1e2
 EZFg==
X-Gm-Message-State: ANhLgQ0BFyYl+NOkKuZguU33+3HrEiYJPUfsZVY0BnwUkrSwwK8irF1Q
 d61+rYV4SCiQIrsEhgdv4hqIZKgo9iQ=
X-Google-Smtp-Source: ADFU+vscOV/OE6cbOrVZtTmLNT+8UloaKBHzcpiPW5XE9mtD10ocdQxND1eUfz7nbLSMOP0BqtM9NA==
X-Received: by 2002:a17:90a:3acc:: with SMTP id
 b70mr12844058pjc.179.1585530840648; 
 Sun, 29 Mar 2020 18:14:00 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id o11sm8933881pjb.18.2020.03.29.18.13.58
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 18:13:59 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Mar 2020 18:13:56 -0700
Message-Id: <20200330011356.3058801-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_181401_971055_18D7F972 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] prereq-build: test for perl's Data::Dumper
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

Required for installation of autoconf:

make[5]: Entering directory `/openwrt/build_dir/host/autoconf-2.69'
Making all in bin
make[6]: Entering directory `/openwrt/build_dir/host/autoconf-2.69/bin'
autom4te_perllibdir='..'/lib AUTOM4TE_CFG='../lib/autom4te.cfg'
../bin/autom4te -B '..'/lib -B '..'/lib         --language M4sh --cache
 '' --melt ./autoconf.as -o autoconf.in

Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
/usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl
/usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at
../lib/Autom4te/C4che.pm line 33.
BEGIN failed--compilation aborted at ../lib/Autom4te/C4che.pm line 33.
Compilation failed in require at ../bin/autom4te line 40.
BEGIN failed--compilation aborted at ../bin/autom4te line 40.
make[6]: *** [autoconf.in] Error 2

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 include/prereq-build.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/prereq-build.mk b/include/prereq-build.mk
index 830a9eff9a..71d8c3c8e7 100644
--- a/include/prereq-build.mk
+++ b/include/prereq-build.mk
@@ -62,6 +62,10 @@ else
   zlib_link_flags := -lz
 endif
 
+$(eval $(call TestHostCommand,perl-data-dumper, \
+	Please install the Perl Data::Dumper module, \
+	perl -MData::Dumper -e 1))
+
 $(eval $(call TestHostCommand,perl-thread-queue, \
 	Please install the Perl Thread::Queue module, \
 	perl -MThread::Queue -e 1))
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
