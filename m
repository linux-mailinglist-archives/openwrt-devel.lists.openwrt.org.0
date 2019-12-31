Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78F812D5C1
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TxpdDO15MsA4UT7UVUshy4sMjw/kSLcVvT7IsU4rriQ=; b=RPvHzK4vncbMYJ9LXjaA6ZgC1y
	xogewZjUcmVH7NJu/vA4aHmJ0966+p4VBkJ8hyZmRiiF0/Tdx1vG3M4COforNGyPSe23oc04Vrd5o
	d+zxFTKCob6xSkUxxJiZLjqcAZG3hOcjD/joBW747TAwRqE5z3CBe4B57rgahntPhshOnRJi9gkVC
	WQjT08N0L2OCuIvE1SJGAXddUtkLsj8MG0ENvvaXmpmTEz7ifrQ1DtcPqhraK+RvGcLILBtWnUCMO
	rIlBl6uNICB+IAMzMoFmPU1c0MPmVwbgyZQx10Q2XmimPpIUjrq8FJ41ndjTO1GiOCFq06aRrofXs
	nQnscgqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7Af-0006GM-5Z; Tue, 31 Dec 2019 02:22:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7AH-000640-9M
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:21:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so15365862plt.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=I7WBsFKah2NJwsDci+pjAczGICBEq0SzjCogF9C7j84=;
 b=G8l/nJfJwmbvHHF8etIznIlIL8f4FAcPmQ8VN3YMS0MqvMOF/QVtKQbiQMnU3gj5TK
 xRlIuDW9rgaDBE1vz1ViM2YQEeua7liq7jgr3MWWcyzb/C84bI9YBjREqeQ95IihcvQm
 UHQA0LnEK2X5EDfIcTEOJPbceWYokbca+yzpSvwrgio0NoKyBbzDDoJkB7lEe3fF0BXr
 nhh5Up+lb+04IowCXrszscD7RcSI97p7vByTvoHWvL2FAU5LtsNKqMDlr3VyyBy+bGWJ
 oVklmeoc2dD5h2eZsJITNuphbYB523HkaBrzgFtLU+IXJBtegk5LmMKi6fKSIdpwKjTc
 Yqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I7WBsFKah2NJwsDci+pjAczGICBEq0SzjCogF9C7j84=;
 b=qb3E9AQTasguTjY7qAUfmjsdVGb9BGjfUxQwgofRzUlKgyJ/3H/87cJqWGAyaEy4ZY
 ZuTgQc6T6To+AdFI5bigNz3w/6VnYche/+K3E5pKXC6nYKt+VrDWbnjYnh4g4f39wRfp
 pRyVJJn9l3RFP9BntNM0Li26Vw/enbkvFTMgfItcS6fQBu5DSEPVc8QOWudsG3zXfTsy
 Fmae8OYiMiuBQy2G0hjXv/u2dhtzinD7PmhZhANFmbCUvdJDZkAXipVwQbaGOPgraoMb
 1kfIOZdB2O6GZ4D8mBfwEfHFVc1Byvc5noHnTPyqEOgFkOD+LQTXQqWJMKPlvnqezrtV
 FzVQ==
X-Gm-Message-State: APjAAAXWJEOUoRI2YcVaaLmQtMaAu8edWWsTrigPzbmnJcsPW5szPQ5D
 ztyFpmZhStWfykp3WnglVC9GQY8+zf0=
X-Google-Smtp-Source: APXvYqy2PBS2dXNFojeg0YLVN5+fMgXkfYEWIZD0RcQ6ufypgJxnaw0rvOKxx8Yyqxk6UbpYnqoSkA==
X-Received: by 2002:a17:90a:f998:: with SMTP id
 cq24mr3150214pjb.6.1577758904301; 
 Mon, 30 Dec 2019 18:21:44 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k1sm908587pjl.21.2019.12.30.18.21.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:21:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:21:37 -0800
Message-Id: <20191231022140.48222-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231022140.48222-1-rosenp@gmail.com>
References: <20191231022140.48222-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_182145_324913_639D0BE1 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/5] scripts/mkits.sh: replace echo -e with
 printf
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

echo flags are not POSIX. printf does the same with added \n.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 32a978e18d..def3d3c7c2 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -15,18 +15,18 @@
 #
 
 usage() {
-	echo "Usage: $(basename $0) -A arch -C comp -a addr -e entry" \
-		"-v version -k kernel [-D name -d dtb] -o its_file"
-	echo -e "\t-A ==> set architecture to 'arch'"
-	echo -e "\t-C ==> set compression type 'comp'"
-	echo -e "\t-c ==> set config name 'config'"
-	echo -e "\t-a ==> set load address to 'addr' (hex)"
-	echo -e "\t-e ==> set entry point to 'entry' (hex)"
-	echo -e "\t-v ==> set kernel version to 'version'"
-	echo -e "\t-k ==> include kernel image 'kernel'"
-	echo -e "\t-D ==> human friendly Device Tree Blob 'name'"
-	echo -e "\t-d ==> include Device Tree Blob 'dtb'"
-	echo -e "\t-o ==> create output file 'its_file'"
+	printf "Usage: %s -A arch -C comp -a addr -e entry -v version"\
+		 "-k kernel [-D name -d dtb] -o its_file" "$(basename $0)"
+	printf "\n\t-A ==> set architecture to 'arch'"
+	printf "\n\t-C ==> set compression type 'comp'"
+	printf "\n\t-c ==> set config name 'config'"
+	printf "\n\t-a ==> set load address to 'addr' (hex)"
+	printf "\n\t-e ==> set entry point to 'entry' (hex)"
+	printf "\n\t-v ==> set kernel version to 'version'"
+	printf "\n\t-k ==> include kernel image 'kernel'"
+	printf "\n\t-D ==> human friendly Device Tree Blob 'name'"
+	printf "\n\t-d ==> include Device Tree Blob 'dtb'"
+	printf "\n\t-o ==> create output file 'its_file'\n"
 	exit 1
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
