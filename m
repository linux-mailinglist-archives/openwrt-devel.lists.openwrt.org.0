Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D44312DD51
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SP7eTfLl2mNVhliBthCByd8JI2+PbcL66QJrQr2qNvg=; b=kUGlz9cFd9u8nz93lEF98jSGeY
	97XkllaGjN3K0zx1itcjyKvVdavOW7l7WVfJCLJW224DBS6+WjiE0cAgalxwxgcBxyPS5841y2g/f
	lwQ5F6AvJyFnzQeqSwTGN/UZgV6WKqLn5PrmJ9FFtGDzl9Rji1J0crGqEP+RfMjmE3E6sengybZAa
	B3lH+xm7Yc0Kj7FRYCucDmJs6qOfOcDbkmpHG/t58Yk4yjthSDt14QZpdgxEDKvQKi2N7AjMCjRNP
	HQg+lZvs8fkUgj91HuLU9tjEREz3VixYRAgbT3RTZa9/kLXWEKaIALjrLScC68tW3bUIGXHuraiht
	Nmipsokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTLT-0002oR-AQ; Wed, 01 Jan 2020 02:02:47 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTKe-0001m6-F5
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:01:57 +0000
Received: by mail-pg1-x530.google.com with SMTP id x7so20133466pgl.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=GMM4oZ0Zn43kZLiI8a0TZL+3Pz6E5edSOca+ZQRfJec=;
 b=AgLXER+OTbJyRIIyEsNTXHXtkovDMH9yrNzvFSUyyoHFP2evuIbskIY5lnXI/LY9fH
 Clo3koCkQM0+qh348tY5nPhPUrYOD259N7uyFgRTUJ2tX+9ea1Kr6AEj0Xp/EDBzGFAK
 KA/0/lhwM0wjlDkR51AUYpNpIu9JSJrvYK3Gxc5g8LMkTGnMTnuim09xylSpS3gwLChu
 rfBd0+vBN6S+19N/ptU8PMGb2x6Nvg6JBjC/RGUtpuc4aWiEpK5LveADS43C5f+TvkjA
 rVNL8SeGkGAP/9pb7EUdcc3OTkcDv5YjyqoNnBvJuh67F3Z0urKVq2yVotEUqIu5ZiwK
 JgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GMM4oZ0Zn43kZLiI8a0TZL+3Pz6E5edSOca+ZQRfJec=;
 b=hRYX5rmmHGVDpN8nSvsJHhHtwMgFJJjLg1jqZOzhesYVjLmfgzqH9/V/aG5ngOC8f5
 gLwh3VExy+i5CDWCGfPdJNg5zvf6dZ+fsXJrEVXos+m24sn4Zlk46QlGl2uZYiSEhP64
 YqDXb3m/H0Zv3at8YaorORczNm1YN6MUTQvoNdkc4TH30y+sxt9npSTsk5rYr6xA2zM1
 CNqzV/nnVLSvRmYL6o+XgcoPyzk2Axc6OwzxuV0kB+uzrINuFx6PDLo0lSddTqADlcFY
 +HYF9ElZfjQCQjROPvdQZrrruSLOsolOJm6mUZWYubWqqVa7s2Sq7JCzlGN4M0LmriGE
 m0lg==
X-Gm-Message-State: APjAAAUmGI0fibbB78MFrmP4aHWOvoIaAJIOqxUuYjywd7jbc4+3r0cs
 bnO43c+78iSjj2+GgVnJwX/rCbhewV0=
X-Google-Smtp-Source: APXvYqx7ECU+JrFxPkSWwTWqU9qmCSr4CrLj75MDvjkCRneNDBOSnK8NLnrLiVf6ytADIPetlLLwtQ==
X-Received: by 2002:a63:6e04:: with SMTP id j4mr79693497pgc.175.1577844113099; 
 Tue, 31 Dec 2019 18:01:53 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z26sm52559730pgu.80.2019.12.31.18.01.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:01:52 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:01:45 -0800
Message-Id: <20200101020146.21043-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020146.21043-1-rosenp@gmail.com>
References: <20200101020146.21043-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180156_530917_903237CA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 4/5] scripts/env: exit in case of failure to
 cd
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 19cfa13841..848850a778 100755
--- a/scripts/env
+++ b/scripts/env
@@ -147,7 +147,7 @@ env_clear() {
 	else
 		rm -rf "$BASEDIR/files" "$BASEDIR/.config"
 	fi
-	cd "$BASEDIR"
+	cd "$BASEDIR" || exit 1
 	rm -rf "$ENVDIR"
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
