Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAC714143C
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 23:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WWYt2tkPPp73oDHTL1hgK4oSfToK2SmWZF9TZqJQfb0=; b=FYf126W0OnZHs8
	E4b1CDs1KBDfUeJTKSW9OBubJEoPY9fYmuU1wbvexhT7n6BpLlbEIyQpLPPRqMMLJ4613xS5GpIWu
	rH7TufvKc6fZOJblTMhvSsPuoY+hEBnV2iWnBBbOlaNHbITNLMevXbW7ViDmdqj6w9KcMhvz+zjMf
	C9ETfPz1ptTNB7ufm1JfjcgZUx/NKQYspmfWzBs39gnbRJ4HWSw7bnasFjWemF2JDoxzJYeDrlPAF
	Z8xxhiWEtFDJvsNVvK2hvlAaRg3sgRJWhQnJGJMQKEOS1vgb92P3leiuUmMJsVf8xxVwMSSB6IKrF
	haNg49kLT98fLns3ZJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaG5-0002wl-Ew; Fri, 17 Jan 2020 22:38:29 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaFx-0002wQ-HY
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 22:38:22 +0000
Received: by mail-pj1-x1036.google.com with SMTP id d5so3758080pjz.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Jan 2020 14:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VUMulhz6TsDy5coagttb/8NQWlkW1x+dLXhoSfZJjgg=;
 b=DNBTK8EuUz4bpv+4/vSH7fumh8I5cUQ9TC+qzdK7MUxJfp1nI+yigk07F8lGhDXGV7
 8rWcjF9TTrBScMfVj2b99vlSurQNL5WQYI8habj/v4fMtf02F+9ahjgobVWafeyVNtrk
 MGDVcowQpGpuwCtYoVMcnc9U4P4lRapKdYcvhiHuEx3LSTXdhBzniqqiM2r6Eu2Uj/48
 vUiTSPtGJRV4z7+nJjLKzMREzyGtwUhvKs/fxh/BwLKoGFvrSZNO4j7ccgw0BvOpkEzO
 hvUfoyY8121PG+Klf1qQsMfetHzX5U9137B9ma2ltfFlq2U4ENT/xJs8UgrSIP8cQiyI
 KcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VUMulhz6TsDy5coagttb/8NQWlkW1x+dLXhoSfZJjgg=;
 b=brmgCwrPHvx65A7I8MMBBYJXTffuycQEBX677jQqVwLU47qYKLyrMsTiqOkQY+/czL
 83LCDA0V/IYgePcIl2Gbew4DCR2TuYhXSBaRSk9mYtVzNUbbzuzq00x1N59iW/oTc1l8
 f+8vXUlleYfQrWfRbA6sfozIbPyqC8GGKQa/UeM84zhEPdyt/qU8+ukMUUA/lcWEJycC
 ZwHP2GgOoFMunUCSvKYWAQT2REDeIScO4xEH1t5qMuKuD4kFFRPMsEIN+mD4W1LwwpH1
 EHZIduNZ846RxkaNLfgF2Lpj8DEfTdK3EQ7Y+Xb0fP3ZtYyU5fTSS+UBtkNANWeUfBnO
 aVMg==
X-Gm-Message-State: APjAAAUJrlgP+dTcp7+hRlxflrz/YxEFoUFc8urjgwqoWf0auFSHOdba
 zLcTGK26172JQwVBX1JkxHJVXliP
X-Google-Smtp-Source: APXvYqwOsBSesaOR5E4QI0IuudgeMp3bfCGeJfbrM8IK6XEuIBN/zSuWxw2R31sqBei1keBOY9WdLw==
X-Received: by 2002:a17:90a:3747:: with SMTP id
 u65mr8389733pjb.25.1579300700505; 
 Fri, 17 Jan 2020 14:38:20 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j8sm30047038pfe.182.2020.01.17.14.38.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:38:20 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Jan 2020 14:38:19 -0800
Message-Id: <20200117223819.23058-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_143821_579225_DF0E26CE 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] base-files/functions.sh: use command -v
 instead of which
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

which must be executed. command -v is a shell builtin.

https://github.com/koalaman/shellcheck/wiki/SC2230

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: enclose command -v in $().
 package/base-files/files/lib/functions.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 207fe96ce6..bc67e65edc 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -176,7 +176,7 @@ default_prerm() {
 		ret=$?
 	fi
 
-	local shell="$(which bash)"
+	local shell="$(command -v bash)"
 	for i in $(grep -s "^/etc/init.d/" "$root/usr/lib/opkg/info/${pkgname}.list"); do
 		if [ -n "$root" ]; then
 			${shell:-/bin/sh} "$root/etc/rc.common" "$root$i" disable
@@ -265,7 +265,7 @@ default_postinst() {
 		rm -f /tmp/luci-indexcache
 	fi
 
-	local shell="$(which bash)"
+	local shell="$(command -v bash)"
 	for i in $(grep -s "^/etc/init.d/" "$root$filelist"); do
 		if [ -n "$root" ]; then
 			${shell:-/bin/sh} "$root/etc/rc.common" "$root$i" enable
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
