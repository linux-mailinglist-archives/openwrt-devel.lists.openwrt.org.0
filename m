Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD4E824F5
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 20:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRjocMalRPBLGI8BOKyVRLTkhrmlszA16XhvXitzh9E=; b=W4DtVOcJ8h5a4q
	LVdops0pPmJjFBjQKIRsj6AzQzUwVC+7CTd//83nIHa3YR5dvlLfXpG5ERp4VZ12kNDcU+HQVTyuM
	AR0iWgaThfyR6cpNvDSrSh+hipmCnGeLbv2Kk14iibeOz1NqmXHmbZ980gOJteYfJZxt7nVelaePS
	9SoqVF44Km5av0GlllhESLVuqKID/pyUNIhCpA6uuvE+57VZlCg9pcFvaATcOsYxA9ezdZsO/aEHq
	Z18halzMhTd5FKmQ/SqbPmq9Vmvjv+0+lIkDjSawK2kgvOXQ2l/4gKjImiOpz23zXB602sRzHMRIc
	07uaodbIcRSNiuc8DOtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhqI-0002DR-Lo; Mon, 05 Aug 2019 18:36:22 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhpd-0001XN-VZ
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 18:35:43 +0000
Received: by mail-qk1-x72e.google.com with SMTP id r6so60920057qkc.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 11:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqVNSh6BpzOR2NEVpIMWJ21je+Eu4RSnrOMzucJlNjs=;
 b=Ef6p68JRusC/ZZaA5NXI9rmQDPXpfXrx+oKrDw1fjY0Lw9fmMZFqfQRgPP3Kf9T7D3
 7FsmamkHeak34tF8xEQaaGqulOkKD88TrIeP8bMD5tqGG9mjQeb7wVZ7DuP4emrnVLo5
 UIb7/Hoh9AeaQLQVRm+NVVv5dvJcJfO5XYO5swqyz6vmSSATdJXp7RIhHYD1zzhaJK4N
 lB7LTx791MW3NFE5puxO2SLY3Ui1jKqbSl/vYxsSTTq8d7KKVz1+yEE7zrDP2vDFYBeA
 SINILZBaCunbzM/uwcWfm1w6EEupajoQNH9m0E46M86nVAM0lj6ieeEjrNsCkSLVcHd6
 CaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqVNSh6BpzOR2NEVpIMWJ21je+Eu4RSnrOMzucJlNjs=;
 b=VuEkmPsW9wovDycVwZRBdD0aLoIIgZfp8pX1k5lDaTmaLJi6zjSJ/uo9Y5Vv5MRru2
 WjLw4USDDYywYgkR7d2mWdqfPhxmdJLNdXo+iXOmplutzPqk2rjtx3zxDP2+GfQgxuhC
 2h0k2betcF7Ny2dzL4zKx5kcRA0aAXTIEdQviNsBfSogB5a/ugaw39mC14JDxfxAxhxM
 Pc3+nE6WH1R5zTl02JyO2apruAP13h4M0GiQPYUnhGOBfGBt4pYV6Y7axhG2NZ+8szlh
 b+3skpt8qYn0AQb5vHTiiBHSS3Id6w3ahu2YLJkpWF4WzALlWfqHSMoOSMgasneWngyY
 otmw==
X-Gm-Message-State: APjAAAWEG2uxvHVHYKudsF9AdSU9RJFzGKfBgBQt3CcSfw4Ex3cGMUNY
 BG3uvnwEOj1LuDFsYVz/BlGS3brno6Q=
X-Google-Smtp-Source: APXvYqyPKOz+acqYLOhx/E41cna++X8Pz+4w450yLXNyAqrU/xPXxW8IyeYXo5AImYdBDLNgUxm6/w==
X-Received: by 2002:a05:620a:1598:: with SMTP id
 d24mr103756137qkk.348.1565030140374; 
 Mon, 05 Aug 2019 11:35:40 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e7sm34565926qtp.91.2019.08.05.11.35.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 11:35:39 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 15:34:39 -0300
Message-Id: <20190805183439.17926-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805183439.17926-1-cotequeiroz@gmail.com>
References: <20190805183439.17926-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113542_055966_D1689CA6 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/3] uhttpd: add support to generate EC keys
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

This adds the key_type and ec_curve options to enable the generation of
EC keys during initialization, using openssl or the new options added to
px5g.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/network/services/uhttpd/Makefile b/package/network/services/uhttpd/Makefile
index 0738ec68f5..247132d2b1 100644
--- a/package/network/services/uhttpd/Makefile
+++ b/package/network/services/uhttpd/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uhttpd
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/uhttpd.git
diff --git a/package/network/services/uhttpd/files/uhttpd.config b/package/network/services/uhttpd/files/uhttpd.config
index a3deb9cf04..39089ca25b 100644
--- a/package/network/services/uhttpd/files/uhttpd.config
+++ b/package/network/services/uhttpd/files/uhttpd.config
@@ -118,9 +118,17 @@ config cert defaults
 	# Validity time
 	option days		730
 
+	# key type: rsa or ec
+	option key_type		rsa
+
 	# RSA key size
 	option bits		2048
 
+	# EC curve name
+	# Curve names vary between mbedtls/px5g and openssl
+	# P-256 or P-384 are guaranteed to work
+	option ec_curve		P-256
+
 	# Location
 	option country		ZZ
 	option state		Somewhere
diff --git a/package/network/services/uhttpd/files/uhttpd.init b/package/network/services/uhttpd/files/uhttpd.init
index dc496b3e28..6322473b97 100755
--- a/package/network/services/uhttpd/files/uhttpd.init
+++ b/package/network/services/uhttpd/files/uhttpd.init
@@ -43,15 +43,19 @@ generate_keys() {
 	config_get state      "$cfg" state
 	config_get location   "$cfg" location
 	config_get commonname "$cfg" commonname
+	config_get key_type   "$cfg" key_type
+	config_get ec_curve   "$cfg" ec_curve
 
 	# Prefer px5g for certificate generation (existence evaluated last)
 	local GENKEY_CMD=""
+	local KEY_OPTS="rsa:${bits:-2048}"
 	local UNIQUEID=$(dd if=/dev/urandom bs=1 count=4 | hexdump -e '1/1 "%02x"')
+	[ "$key_type" = "ec" ] && KEY_OPTS="ec -pkeyopt ec_paramgen_curve:${ec_curve:-P-256}"
 	[ -x "$OPENSSL_BIN" ] && GENKEY_CMD="$OPENSSL_BIN req -x509 -sha256 -outform der -nodes"
 	[ -x "$PX5G_BIN" ] && GENKEY_CMD="$PX5G_BIN selfsigned -der"
 	[ -n "$GENKEY_CMD" ] && {
 		$GENKEY_CMD \
-			-days ${days:-730} -newkey rsa:${bits:-2048} -keyout "${UHTTPD_KEY}.new" -out "${UHTTPD_CERT}.new" \
+			-days ${days:-730} -newkey ${KEY_OPTS} -keyout "${UHTTPD_KEY}.new" -out "${UHTTPD_CERT}.new" \
 			-subj /C="${country:-ZZ}"/ST="${state:-Somewhere}"/L="${location:-Unknown}"/O="${commonname:-OpenWrt}$UNIQUEID"/CN="${commonname:-OpenWrt}"
 		sync
 		mv "${UHTTPD_KEY}.new" "${UHTTPD_KEY}"

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
