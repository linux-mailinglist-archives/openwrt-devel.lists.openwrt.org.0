Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E61AFEDC
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 01:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6PxiBxTOAFjBhiAzdJSzlCBY6jf9UC+xMqjlMdXomU=; b=g6lVAfiF614ww6
	wpgv0wrQ8+AUX1uIWV+MyX62ltlwJqm4wLaTJOJY44rL0OZXIfvPAPmXHXjmQQQcxjB5iNik8qSIc
	f08w36xTFOaeT7B218AWIJAGalypa0/7x4Zj8rhQcLc4W3Eh3kfxHSIps4ntK8owC2tEYnN/09Okz
	DbDeSyiKf31NS+T76LFMiWoXBSh6FeKLTn7REyolEU+4JLDpITre/AueTze3EoH3bYKrT7HRS57CH
	+I0z8lHilmYzwg76QMzMYmUi3kpaznRaN7TGGbPMB+6NMnUTyyP1eze2DiM7ia3a/9BAmX9WhDKFf
	RHyzrH5mp4QQdgZ6zGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQJ9d-0000C5-U4; Sun, 19 Apr 2020 23:15:13 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQJ8a-00083N-2f
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 23:14:09 +0000
Received: by mail-qt1-x844.google.com with SMTP id 71so7036368qtc.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 16:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p3IfkMAI/rFhy2KPR3enhF9DmhJYwyVK7V7Hy4+3MMU=;
 b=DmAyJr4+ZizmVVOKJoB6tOucjSuyDvB9dGrEhqX0y0Bg43WwN404NXCofgZm5LJt99
 COy0SCPrQ2lNgZk5DtPFxkFjampq4KJoEfjzFE3tcgiQmvVM9yuVO/98i6BLcskuGg2y
 xjROY1fWR/ySp5XkQmoRokbjgZsvEC/ZSLWaxXzK4CeLXDy5BhXWd/g/HMAtDS6TluO+
 CWtABJ8Fr6u4W9ICAQ84nmWtfFreszNXAuav9t3PknbjT4Nr51EsMEok+ERIWWhXq+mZ
 ybaz8U3o3xg+rrO7B4Q1dmDO8RgfMAa3LZrLboA5VjLtXaDmMNYRbj1Re+sW/YKNMCIu
 G5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p3IfkMAI/rFhy2KPR3enhF9DmhJYwyVK7V7Hy4+3MMU=;
 b=AjvXX+52LVM1u8kEgKwbJHrD3ETHSxfeiJl7+IhbYteg/0+9aiTcAANWmQ1aaBmbnm
 3S38ln4DGVFuYoODC5LntqPYOsrbhvIoOGpde8Y49fI8V5+Jk7hbw4f4DjKLYmWjNDsd
 gR1hFxipdG5ovm+Iz0U7mVGV99smeAHN2ub/Ei4cChW5QKhKUEfoQq7YrqpojO746oHI
 nr8CFX9p432zC9HFPl+sEspXo3x1/Us5DzzemvPd5i1gmyNCu07wx4EfNoT/PHpCEHwe
 4Qynay1NGwsuRF6a/hzpnZv26rD/Fuj1cO1YS/h8b8DmfJxIzB0D2nD5/Gzt037oEV0W
 rygQ==
X-Gm-Message-State: AGi0PuYLgXTsYNnc0VP4X4457VZbJ5StrkIvPQ6S/WaQ7XGCCCE007Uh
 RZdmPUKbvJ6Wu1gRqr4VCH5cXfxDH+0=
X-Google-Smtp-Source: APiQypJ2vd/LTI3c/f+8+2ta72n8kU7I9+bHtMVMFO0HpgrwgzDJGG5zPJuOIkykzBOtVYD5BZiaOA==
X-Received: by 2002:ac8:2a76:: with SMTP id l51mr13086409qtl.81.1587338045839; 
 Sun, 19 Apr 2020 16:14:05 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e133sm4173650qkb.128.2020.04.19.16.14.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 16:14:05 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 20:12:52 -0300
Message-Id: <20200419231252.19853-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200419231252.19853-1-cotequeiroz@gmail.com>
References: <20200419231252.19853-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_161408_125072_E7DC183E 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 3/3] build: have config-clean deal with
 old temp files
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a temporary commit to have 'make config-clean' remove
temporary files from the previous scripts/config version.

The .gitignore file is updated to deal with the old files as well.

Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/scripts/config/.gitignore b/scripts/config/.gitignore
index b5bf92f66d..737c5b7953 100644
--- a/scripts/config/.gitignore
+++ b/scripts/config/.gitignore
@@ -12,3 +12,10 @@ mconf
 nconf
 qconf
 gconf
+
+#
+# temporary files from older version.  Should be removed
+#
+zconf.???.c
+zconf.hash.c
+.tmp_qtcheck
diff --git a/scripts/config/Makefile b/scripts/config/Makefile
index eb55b759a8..d98f15c393 100644
--- a/scripts/config/Makefile
+++ b/scripts/config/Makefile
@@ -7,7 +7,10 @@ all: conf mconf
 clean:
 	rm -f *.o lxdialog/*.o *.moc $(clean-files) conf mconf qconf
 
-clean-files	:=
+# This clean-files definition is here to ensure that temporary files from the
+# previous version are removed by make config-clean.
+# It should be removed or emptied when this Makefile get updated again.
+clean-files	:= zconf.tab.c zconf.lex.c zconf.hash.c .tmp_qtcheck
 
 # ===========================================================================
 # Variables needed by the upstream Makefile

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
