Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C7B10DAC5
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 22:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+rUUW53diva51GHzyRP5ZK4pTZHjmtGkPEZPya+TIFU=; b=D20d7cfkofZR7h
	iS9k2i02oz9VOa1sZzsDXUv/mwWcqr32mIFiPj75UHVGk5Y3yGoT3LPD5OQ2rtZUHgt1yFOx9kHw4
	ljpD7JXwQ67nB1rWI99ngUkzj73ZKwcsylprNYnt7M1YYFMO8DnhCeAJuG90wkqWw2brj+9YLWUfJ
	YLIL755tsrBnKFKiosXNS6h5xvnYR61jueq9fAMh4V+ClN8QW8mdoWSJwV0UgV/HVUXFQ6l1YGd3y
	eKM1mG1ciz6fBC8pIS6ii6KOqiat6q6v/cRm4rYSlGth8uGFfPBabYr+uoEk2+M+9sVyV5lx4Uxl3
	akYQ4OcTEKFsvqhNNb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianVP-00069L-1J; Fri, 29 Nov 2019 21:08:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianVE-000690-AF
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 21:08:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id b19so15203938pfd.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 Nov 2019 13:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ySS+zeqLWZe2An4S7Zc/5qX1GgdyQYfGT9QblNOTMGE=;
 b=Nre74iFZviOzudp1Q132ZRPgW8oSt5QGsN2wGIlQ1/LD1DGQWz37FzooXHIlbPx2DS
 B4gSoLJ4hKv9Scwaq+DQrNuLJjmk8fY1ul7RxT82484wa9A+nNSG4lBT+yYhEGnjQe7V
 lM01M7DZWlOiEp5mlXsRlJpD9pDjULwl4wlt0mIoJ0wKyAWBVm6MLRaHIlXiHdyszmaS
 nc5P7k8DQbAL9yk9dKg3KZVPfREfv5APawu4UE+SUmm+h9Z6NvInkuHhS5qGAwV1y6bC
 x5omufHCVO+h5Cx5IMHlmahouA/NreXAHdyFxqH1rz0mKcsY5s4VzBay+efhnOQX8gSo
 Rvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ySS+zeqLWZe2An4S7Zc/5qX1GgdyQYfGT9QblNOTMGE=;
 b=VvWG761u+sGBJdRbQQZB2AM2icvkw6ACeHyZ49kzoeyAbWlxAGg82VS7GtBbA6t6RQ
 jlio0J7UaUD1DEGKz/u2msZXBp25gC2HM4EgrxA/jtYAJJ/0uUxG8yBbidlG+7pGzjGt
 RjKuBeeBvnRKDbvqfLJYuZn1Es6fyGg7AZT+mqL6dodK7qxFlJJ91XbHxDBMwr7b+nKW
 S/iLg3+Fs5UF8LnYfiZj+s5BD+jPZncSyrSn0GTx0KHH/mZvYeGQhuMOfczjEkuWk/xx
 yNZyhDNYRtvPvdMIl0+Sz0l2S488lOyQQ+M86gvcMuPgDZLTnCQaUsQPmXB8dGyFyF2W
 K5uA==
X-Gm-Message-State: APjAAAV4c2nLz0reW6hFnT5FseDK8j+iCOV1tQdxnhMOG3FFxguc95kv
 0nbQvHe3sGmSHdW9xl7cIcJg+C2w9oY=
X-Google-Smtp-Source: APXvYqyNIqmxRQrY4PsOq8cE64Yk1xezmLHsj2EM80RQJBK3SFlWVq7oljXvianBa8Z08u4jn52OBQ==
X-Received: by 2002:a63:4303:: with SMTP id q3mr18887983pga.439.1575061715498; 
 Fri, 29 Nov 2019 13:08:35 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j28sm24322337pgb.36.2019.11.29.13.08.34
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:08:35 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 Nov 2019 13:08:32 -0800
Message-Id: <20191129210832.4522-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_130836_352022_79335F85 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] opkg: Fix -Wformat-overflow warning
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

A null pointer is being passed to printf. This can lead to problems.

Fixes warning:

error: '%s' directive argument is null [-Werror=format-overflow=]
   41 |    opkg_message(l, "%s: "fmt, __FUNCTION__, ##args); \
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
note: in expansion of macro 'opkg_msg'
   45 |  opkg_msg(l, fmt": %s.\n", ##args, strerror(errno))
      |  ^~~~~~~~
note: in expansion of macro 'opkg_perror'
  247 |   opkg_perror(ERROR, "Failed to create temporary directory '%s'",

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 libopkg/opkg_install.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/libopkg/opkg_install.c b/libopkg/opkg_install.c
index 976f446..27c9484 100644
--- a/libopkg/opkg_install.c
+++ b/libopkg/opkg_install.c
@@ -244,8 +244,7 @@ static int unpack_pkg_control_files(pkg_t * pkg)
 
 	tmp_unpack_dir = mkdtemp(tmp_unpack_dir);
 	if (tmp_unpack_dir == NULL) {
-		opkg_perror(ERROR, "Failed to create temporary directory '%s'",
-			    tmp_unpack_dir);
+		opkg_perror(ERROR, "Failed to create temporary directory");
 		return -1;
 	}
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
