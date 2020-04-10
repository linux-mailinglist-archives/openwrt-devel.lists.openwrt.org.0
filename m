Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA3F1A3D6D
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 02:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=udQ64DpIEcQWHwCGOLTyukzAzfe81ON8JLYfKUrldxc=; b=dBqJTprCSHD+Zt
	/o2jl3G19MX3QPy0lMVIKeYZAIEQpKTg1zwM2SByexwPnV6+3EvQ2W4VNxdoWXBRWggv67ay4p3OB
	AErhEbJ6dl1fQnlHDb99wbrX0aXmgcK8iWNqfpMniFt0/h5udlPTGzXon5Zpxd8Pah4nsKcbCRb+P
	Epaz970LpJdDXIJfrvsJr6fQRXhNJYO/MEWo5oJGO7ptMHKbiaVpyOm6Sv6BSXQccPBQ7TpOz4Wqo
	kUMeYOdvwyDyoKgFezw2wncVAKPvk3FlHf3dvBh1N4jqI7brwK7YJd0TDD95yaxTpHvoInxq9HIu4
	M8KzGbJRL5RTkq7kjVkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhiQ-0005gI-Au; Fri, 10 Apr 2020 00:40:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhiC-0005Ir-7j
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 00:40:01 +0000
Received: by mail-qk1-x742.google.com with SMTP id c63so776592qke.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 17:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4NMlxfxLl1elcPP8+MkY3r60pjAygpfdHpEeeQ0xIzU=;
 b=T2Wg7DfJ4bkaJnhlASYdGexGJ6XGh0IPGouq4ljjhIDqSYeZkq9AlQHfWsdFNz8xo7
 5XLmbqOaE1dTDFQkUrCcKFX2/eI3NFBqttOfBIGyDAv5Y8EWxvMAS5P8F/mgSEy+455u
 MeYFZSOEINT6iaDIGuSmOfcmoYF3dwd/flJ4K6QXOMMDjFPagdj398lOaW4ktyY3uGGK
 AKIoAn157kfcbRCZjhQrFDky7idHUQBKEjycONKZb+6Yl6ccfHuHbnRpbJaCe8IGysxW
 /Mff7ql00eam0f1mKl2CWYCHokIWcvzrsSg0Egs7PwLCdbIXQz9ulNO8p898nc9CVUkK
 SiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4NMlxfxLl1elcPP8+MkY3r60pjAygpfdHpEeeQ0xIzU=;
 b=A6Gz60a/tXp2HCmqngmUJ7N4GxTTbXthK68axlpiNbUi1y6WfLyax1rZe33i93tOfj
 UJ7SR0JAFWkenJmhKuTNGu+Gwi/l18VEOS/iTUdlwTQi4MqcjZ0+Y3mAXDNMYr9oP/7n
 WS9ud9aqgJNVcKmXARxb+2CWsgBewfPbN2uhwuHgIKxcPfTxX41ehyh8eEpHTEBwXOTU
 28AJFz7Brjv/TE8dgXtBRH98x+nLKcSpq2qdAyyCXviLBmyFmzvQbn472PhQ9ojKbkNk
 hbSburfs9AWW7JXeKvb/rQRBysGszgxMF3DwCrkOg4qs2rH35obnYNdnp0VyFGKNr3i/
 HShQ==
X-Gm-Message-State: AGi0Pubzmnvm5I963qypEdZWTkNDJY1zSXQn8KA0Xrw4sTe6y5jRG3mk
 IZu9VYWz0rMfaXDxUf/3Uz4h9fjgOx0=
X-Google-Smtp-Source: APiQypJ82e18i+jkanucN9Fpl3bss0fR3C5ouXnjwjDSmJF4z1TtjM6bwXurERoQ2Xo9U0zasdR8Ug==
X-Received: by 2002:a37:b041:: with SMTP id z62mr1654155qke.487.1586479197398; 
 Thu, 09 Apr 2020 17:39:57 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u15sm399766qte.91.2020.04.09.17.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:39:56 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 21:39:17 -0300
Message-Id: <20200410003917.22033-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174000_302082_00630050 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] build: config: allow bool to select a
 module pkg
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

kconfig-v5.6 disallowed a bool symbol to select another symbol that
'depends on m' (i.e. can be only 'm' on 'n').  It is, in fact, an unmet
dependency to have set to 'y'.  However, openwrt depends on the previous
behavior, to be able to build a package that can be a module or built-in
depending on a bool config.  This restores the previous behavior.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
--
This was reported to me here:
https://github.com/openwrt/openwrt/commit/dcf3e63a35d05e7e5103819c0f17195bfafe9baa#commitcomment-38390450
The update to kconfig-v5.6 broke TARGET_MULTI_PROFILE because it would
not accept bool TARGET_DEVICE_<dev> to select MODULE_DEFAULT_<pkg>
because MODULE_DEFAULT_<pgk> 'depends on m'--should only have a 'n' or
'm' value.  A 'y' value would imply an unmet direct dependency (depends
on m).

My first thought was OK, if it wants to be a 'y', get rid of the
'depends on m' line; that did not work, because MODULE_DEFAULT_<pkg>
selects PACKAGE_pkg, then <pkg> would be forced to be built-in.
So, unless someone has a better idea, let's revert to the old behavior,
and tolerate some 'unmet dependencies' once again.

diff --git a/scripts/config/README b/scripts/config/README
index 81243e8016..d193050ba4 100644
--- a/scripts/config/README
+++ b/scripts/config/README
@@ -22,7 +22,9 @@ OpenWrt Buildroot:
    that may cause one.
  - use pre-built *.lex.c *.tab.[ch] files by default, to avoid depending on
    flex & bison.  Rebuild/remove these files only if running make with
-   BUILD_SHIPPED_FILES defined
+   BUILD_SHIPPED_FILES defined.
+ - allow a bool symbol to select a tristate symbol that depends on m (i.e.
+   a package that should only be built as a module).
 
 For a full list of changes, see the repository at:
 https://github.com/cotequeiroz/linux/commits/openwrt/scripts/kconfig
diff --git a/scripts/config/symbol.c b/scripts/config/symbol.c
index 5c6f540314..051472238d 100644
--- a/scripts/config/symbol.c
+++ b/scripts/config/symbol.c
@@ -205,7 +205,7 @@ static void sym_calc_visibility(struct symbol *sym)
 	tri = yes;
 	if (sym->dir_dep.expr)
 		tri = expr_calc_value(sym->dir_dep.expr);
-	if (tri == mod && sym_get_type(sym) == S_BOOLEAN)
+	if (tri == mod)
 		tri = yes;
 	if (sym->dir_dep.tri != tri) {
 		sym->dir_dep.tri = tri;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
