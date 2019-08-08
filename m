Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4029F86D7C
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 00:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j54Q9klJSvkKRHXhLuLek5gilpzsV7VNjK72lrgbJXI=; b=V995UPfcC1mlfB
	St1GVwqRAoWeCjEv8R7blWguirOIieDnrO9o0GN7VrUj9wG+jQMnKrpa0X2PTxUHVFMqP+fH081uM
	5oaCHOryZKy4TcASpki+t1E2lqRS+fmJh5P5+3PL/75W29bsGS6+blbZKPwRptgLnj992569W98IA
	kHU77J4wMo13m7a1VymLCwAHpit52Z9edYliB9AL3hUxgBSaIkoEUY3EhGD+8ZWyIqtFDV83SIop7
	MtcYtHduMPkuO2zI0xPzNbF4EbFjPpw9hpE2YsCgdhpa3VAkNmpgC/Lxsl0zokqqbNbCCwO5jQSCs
	X9RxuHIUrjNjFLYE18ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrMC-0008N0-Ol; Thu, 08 Aug 2019 22:58:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrM7-0008Mg-9G
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 22:58:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so2034884plr.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 08 Aug 2019 15:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=kPjfpPWLM2OpzYTfK2ahPGQKUaXIhCQapCoKbvsxCk4=;
 b=YRqs2FrHAAasz+Ka8i60iMmYfjFKCGWokK9y1HO6XcmFN0h3Y4xzo3cawycadcg3Ln
 2gQjM3YXMRk4gn3hbUb9A0cKGMDXWuZYGkeES4wWwVCpJB1HQbI8grgwveWNG2oqSkBU
 MQIo/5KDJk9hPO8eXq9IqILFRUVeTLBMLmDYTqFn8xRt5RqdJBE7zzuu6eCnXhJeisW/
 KeXMqXW+tzfo/x03xvsKn+tdYKocPJ21/Rv6IoxD/pJRsOyvBBSLaLmptBx5buLGvGDf
 xE5vsf1eHXeGAju5lfkkDnjcGaueduslgs2cNHe2Doz5e19UR+taomfrTrQUl5S4B7DB
 Jr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=kPjfpPWLM2OpzYTfK2ahPGQKUaXIhCQapCoKbvsxCk4=;
 b=Q11yYjNxBym5ucD+Qq4qhP+DDpEonUPHraHCS8soo7XVdliFk0TBHX4P+L798tfX9Z
 L8bfDNco96/Vr4bhzSSXtnBbgfc0TXHl6ChpiU8kW2XRIfCDp4snKx+0F3cJ71T1ySfP
 Dy9F0f0JYBgWJMz53xnlokBtyDqzvnAqOJTlPsma1DohTP/TlHwu2iKLomc/7qHTwZEA
 GiLOJ0qduYXK7SUOyMOrcEyeCjH9Zpt6qqI8qHST5fWzASlYQgZyJN7ySI8NmVbe/MSj
 ilU7CH9JhO5sUj8lNGqgh4tQTuVh8Eg6cr0W8LmTLyfjFtSItD9Q4wWpu1cESeecGjMF
 adLg==
X-Gm-Message-State: APjAAAXlieMpPyRMG3KZ21VpqX3dnX3d7kRJe2+Vam4SkwCau1Lb/hGY
 uJGCs5/L+CeYGa9IbQc7BjRF+fVl8rc=
X-Google-Smtp-Source: APXvYqwGtQMupLRsKL9hTiKx2bhgwZ6PQmgIqjm5VQiFqI1oh7uzWD4Wti5a4Aa0IqJZGWl0kbCCFw==
X-Received: by 2002:a17:902:74c4:: with SMTP id
 f4mr15364213plt.13.1565305078179; 
 Thu, 08 Aug 2019 15:57:58 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id a25sm71002466pfo.60.2019.08.08.15.57.57
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 15:57:57 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  8 Aug 2019 15:57:56 -0700
Message-Id: <20190808225756.25621-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_155759_354716_4BCE8AFE 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] upslug2: Update to git repository
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

This has two improvements over the current version. An autotools fix and
application of the wrt350v2 patch.

Cleaned up Makefile as a result of makefiles being fixed.

Note that this package is not really used as it depends on orion, which is
classified as broken.

This is the last package that uses svn in the tree.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/upslug2/Makefile                        |  25 +-
 .../patches/110-wrt350nv2_support.patch       | 279 ------------------
 2 files changed, 7 insertions(+), 297 deletions(-)
 delete mode 100644 tools/upslug2/patches/110-wrt350nv2_support.patch

diff --git a/tools/upslug2/Makefile b/tools/upslug2/Makefile
index 42448b0185..f270c9fbe9 100644
--- a/tools/upslug2/Makefile
+++ b/tools/upslug2/Makefile
@@ -7,27 +7,16 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=upslug2
-PKG_VERSION:=20071227
 
-PKG_SOURCE_URL:=http://svn.nslu2-linux.org/svnroot/upslug2/trunk
-PKG_SOURCE_PROTO:=svn
-PKG_SOURCE_SUBDIR:=upslug2-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=41
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_MIRROR_HASH:=5c69eae3a2affef8f4f7194cfedfdb9175b04ca433f9ae046c85309b42bdb21e
+PKG_SOURCE_PROTO:=git
+PKG_SOURCE_URL:=https://github.com/fretb/upslug2
+PKG_SOURCE_DATE:=2016-05-16
+PKG_SOURCE_VERSION:=35f0b18c56368f69eef590e7d9fb688fbe624b10
+PKG_MIRROR_HASH:=646856532e5fad240b1697eb94726aafa6712294f608e24892983e6db95fb65f
 
-include $(INCLUDE_DIR)/host-build.mk
-
-unexport CFLAGS
+HOST_FIXUP:=autoreconf
 
-define Host/Configure
-	(cd $(HOST_BUILD_DIR); \
-		aclocal && autoconf && \
-		autoheader && \
-		automake --add-missing; \
-	)
-	$(Host/Configure/Default)
-endef
+include $(INCLUDE_DIR)/host-build.mk
 
 ifneq ($(HOST_OS),Linux)
 	HOST_CONFIGURE_ARGS += --with-libpcap
diff --git a/tools/upslug2/patches/110-wrt350nv2_support.patch b/tools/upslug2/patches/110-wrt350nv2_support.patch
deleted file mode 100644
index eea7cc4d00..0000000000
--- a/tools/upslug2/patches/110-wrt350nv2_support.patch
+++ /dev/null
@@ -1,279 +0,0 @@
---- a/nslu2_image.cc
-+++ b/nslu2_image.cc
-@@ -54,28 +54,44 @@ namespace NSLU2Image {
- 				int &address, int &length) {
- 			address = image.tellg();
- 			length = buffer_length;
--			if (address+length > NSLU2Protocol::FlashSize)
--				length = NSLU2Protocol::FlashSize-address;
-+			if (address+length > EndAddress)
-+				length = EndAddress-address;
- 			if (length > 0)
- 				SafeRead(&image, buffer, length, "image (read)");
- 		}
- 
-+		virtual void GetBoundaries(int &start, int &end)
-+		{
-+			start = BaseAddress;
-+			end = EndAddress;
-+		}
-+
- 		/* Rewind to the start of the image (or the Kernel if not
- 		 * doing a complete reprogram).
- 		 */
- 		virtual void Rewind(void) {
--			SafeSeek(&image, reprogram ? 0 : NSLU2Protocol::BaseAddress,
-+			SafeSeek(&image, reprogram ? 0 : BaseAddress,
- 					"image (seek)");
- 		}
- 
- 	private:
-+		int BaseAddress;
-+		int EndAddress;
-+
- 		/* Validate that this really is an image file. */
- 		void Validate(const char *i) {
- 			char signature[8];
- 
- 			SafeSeek(&image, -8, i, std::ios::end);
- 			SafeRead(&image, signature, 8, i);
--			if (memcmp(signature, "eRcOmM", 6) != 0)
-+
-+			if (memcmp(signature, "eRcOmM", 6) == 0) {
-+				BaseAddress = NSLU2Protocol::BaseAddress;
-+				EndAddress = NSLU2Protocol::FlashSize;
-+			} else if (memcmp(signature + 1, "sErCoMm", 7) == 0) {
-+				BaseAddress = 0;
-+				EndAddress = NSLU2Protocol::FlashSize - 0x40000;
-+			} else
- 				throw NSLU2Image::FileError(DataError, i, 0);
- 		}
- 
-@@ -93,6 +109,12 @@ namespace NSLU2Image {
- 		virtual ~SynthesiseImage() {
- 		}
- 
-+		void GetBoundaries(int &start, int &end)
-+		{
-+			start = NSLU2Protocol::BaseAddress;
-+			end = NSLU2Protocol::FlashSize;
-+		}
-+
- 		/* Get the next block of bytes, returns an address and length, false if
- 		 * there is a problem.
- 		 */
---- a/nslu2_image.h
-+++ b/nslu2_image.h
-@@ -35,6 +35,8 @@ namespace NSLU2Image {
- 		virtual ~Image() {
- 		}
- 
-+		virtual void GetBoundaries(int &start, int &end) = 0;
-+
- 		/* Get the next block of bytes, returns an address and length.
- 		 */
- 		virtual void GetBytes(char *buffer, size_t buffer_length,
---- a/nslu2_upgrade.cc
-+++ b/nslu2_upgrade.cc
-@@ -95,7 +95,7 @@ namespace NSLU2Upgrade {
- 
- 	class RealDoUpgrade : public DoUpgrade {
- 	public:
--		RealDoUpgrade(Wire *w, Progress *p, bool r) :
-+		RealDoUpgrade(Wire *w, Progress *p, bool r, int start, int end) :
- 			wire(w), progress(p), sequenceError(-1), reprogram(r),
- 			lastType(NSLU2Protocol::InvalidType) {
- 			if (reprogram) {
-@@ -105,6 +105,8 @@ namespace NSLU2Upgrade {
- 				NSLU2Protocol::UpgradeStartPacket packet(seq);
- 				wire->Send(packet.PacketBuffer(), packet.PacketLength());
- 			}
-+			BaseAddress = start;
-+			EndAddress = end;
- 		}
- 
- 		virtual ~RealDoUpgrade() {
-@@ -205,8 +207,8 @@ namespace NSLU2Upgrade {
- 
- 	};
- 
--	DoUpgrade *DoUpgrade::MakeDoUpgrade(Wire *wire, Progress *progress, bool reprogram) {
--		return new RealDoUpgrade(wire, progress, reprogram);
-+	DoUpgrade *DoUpgrade::MakeDoUpgrade(Wire *wire, Progress *progress, bool reprogram, int start, int end) {
-+		return new RealDoUpgrade(wire, progress, reprogram, start, end);
- 	}
- };
- 
-@@ -421,13 +423,18 @@ void NSLU2Upgrade::RealDoUpgrade::Upgrad
- 	/* Simple upgrade programs only the addresses beyound BaseAddress,
- 	 * reprogram overwrites the whole flash.
- 	 */
--	if (!reprogram && address < NSLU2Protocol::BaseAddress) {
-+	if (!reprogram && address < BaseAddress) {
- 		length += address;
--		if (length <= NSLU2Protocol::BaseAddress)
-+		if (length <= BaseAddress)
- 			return; /* nothing to do. */
--		address = NSLU2Protocol::BaseAddress;
-+		address = BaseAddress;
- 		length -= address;
- 	}
-+	if (!reprogram && address + length > EndAddress) {
-+		if (address >= EndAddress)
-+			return; /* nothing to do. */
-+		length -= EndAddress - address;
-+	}
- 
- #if 1
- 	/* Skip blocks of 255 valued bytes - the erase clears the flash to this
-@@ -495,11 +502,11 @@ void NSLU2Upgrade::RealDoUpgrade::Verify
- 		Finish();
- 
- 	/* Verify never verifies anything below BaseAddress. */
--	if (address < NSLU2Protocol::BaseAddress) {
-+	if (address < BaseAddress) {
- 		length += address;
--		if (length <= NSLU2Protocol::BaseAddress)
-+		if (length <= BaseAddress)
- 			return; /* nothing to do. */
--		address = NSLU2Protocol::BaseAddress;
-+		address = BaseAddress;
- 		length -= address;
- 	}
- 
---- a/nslu2_upgrade.h
-+++ b/nslu2_upgrade.h
-@@ -206,6 +206,8 @@ namespace NSLU2Upgrade {
- 
- 	class DoUpgrade {
- 	public:
-+		int BaseAddress;
-+		int EndAddress;
- 		virtual ~DoUpgrade() {
- 		}
- 
-@@ -228,7 +230,7 @@ namespace NSLU2Upgrade {
- 		virtual void Reboot(void) = 0;
- 			/* Reboot the NSLU2. */
- 
--		static DoUpgrade *MakeDoUpgrade(Wire *wire, Progress *progress, bool reprogram);
-+		static DoUpgrade *MakeDoUpgrade(Wire *wire, Progress *progress, bool reprogram, int start, int end);
- 			/* Instantiate a real DoUpgrade, returns NULL if the object
- 			 * cannot be instantiated.
- 			 *
---- a/upslug2.cc
-+++ b/upslug2.cc
-@@ -21,8 +21,8 @@
- 
- class ProgressBar : public UpSlug2::CharacterProgressBar<80> {
- public:
--	ProgressBar(bool reprogram, const unsigned char *t) :
--		UpSlug2::CharacterProgressBar<80>(reprogram, 64),
-+	ProgressBar(bool reprogram, const unsigned char *t, int start, int end) :
-+		UpSlug2::CharacterProgressBar<80>(reprogram, 64, start, end),
- 		target(t), displayed(false), ticker(0) {
- 	}
- 
-@@ -95,7 +95,7 @@ private:
- 			else if (seen == -1) {
- 				seen = 0;
- 				if (!reprogram)
--					sent -= NSLU2Protocol::BaseAddress;
-+					sent -= NSLU2Protocol::FlashSize - (EndAddress - BaseAddress);
- 			} else
- 				sent -= seen;
- 
-@@ -423,7 +423,7 @@ int main(int argc, char **argv) {
- { 0,                                                            0,                 0,  0  }
- 	};
- 
--	do switch (getopt_long(argc, argv, "he:d:t:f:vUni:Ck:r:R:j:p:P:T:F:E:", options, 0)) {
-+	do switch (getopt_long(argc, argv, "he:d:t:f:vUni:Ck:r:R:j:op:P:T:F:E:", options, 0)) {
- 	case  -1: if (optind < argc) {
- 			  std::fprintf(stderr, "%s: unrecognised option\n", argv[optind]);
- 			  std::exit(1);
-@@ -523,16 +523,22 @@ done:
- 
- 		if (mac && got_kernel) {
- 			Pointer<NSLU2Upgrade::Wire> wire(NSLU2Upgrade::Wire::MakeWire(device, fromMac, mac, euid));
--			ProgressBar progress(reprogram, mac);
-+			int BaseAddress = NSLU2Protocol::BaseAddress;
-+			int EndAddress = NSLU2Protocol::FlashSize;
- 
- 			if (full_image) { /* complete image. */
- 				/* The full image case allows a complete reprogram. */
-+				NSLU2Image::Image *image_p;
- 				Pointer<NSLU2Image::Image> image(
- 						NSLU2Image::Image::MakeImage(
- 							reprogram, full_image));
-+				image_p = image.p;
-+				image_p->GetBoundaries(BaseAddress, EndAddress);
-+				ProgressBar progress(reprogram, mac, BaseAddress, EndAddress);
- 				Pointer<NSLU2Upgrade::DoUpgrade> upgrade(
- 					NSLU2Upgrade::DoUpgrade::MakeDoUpgrade(
--						wire.p, &progress, reprogram));
-+						wire.p, &progress, reprogram,
-+						BaseAddress, EndAddress));
- 				progress.FirstDisplay();
- 				Upgrade(upgrade.p, image.p, no_upgrade, no_verify);
- 				progress.EndDisplay();
-@@ -551,9 +557,11 @@ done:
- 							fis_payload,
- 							product_id, protocol_id,
- 							firmware_version, extra_version));
-+				ProgressBar progress(reprogram, mac, BaseAddress, EndAddress);
- 				Pointer<NSLU2Upgrade::DoUpgrade> upgrade(
- 					NSLU2Upgrade::DoUpgrade::MakeDoUpgrade(
--						wire.p, &progress, false));
-+						wire.p, &progress, false,
-+						BaseAddress, EndAddress));
- 				progress.FirstDisplay();
- 				Upgrade(upgrade.p, image.p, no_upgrade, no_verify);
- 				progress.EndDisplay();
---- a/upslug2_progress.h
-+++ b/upslug2_progress.h
-@@ -161,15 +161,19 @@ namespace UpSlug2 {
- 			Timedout,   /* *: timeout on a sent packet for this address. */
- 			NumberOfStates
- 		} Status;
--		
-+		int BaseAddress;
-+		int EndAddress;
-+
- 		/* reprogram says whether this is a full reprogram (the entire
- 		 * flash will be erased) or not (the leading, RedBoot, SysConf
- 		 * partitions are not erased).
- 		 * resolution should be about 6 for a command line (character)
- 		 * progress bar and 8 for a GUI (pixel) progress bar.
- 		 */
--		ProgressBar(bool r) :
-+		ProgressBar(bool r, int start, int end) :
- 			reprogram(r), timeout(false), retransmit(false), status(Init) {
-+			BaseAddress = start;
-+			EndAddress = end;
- 		}
- 
- 		/* lowWaterMark..(highWaterMark-1) bytes are in state 'st',
-@@ -179,8 +183,8 @@ namespace UpSlug2 {
- 			/* These initial settings cover the majority of cases
- 			 * correctly.
- 			 */
--			lowWaterMark = reprogram ? 0 : NSLU2Protocol::BaseAddress;
--			highWaterMark = status >= st ? NSLU2Protocol::FlashSize-1 : 0;
-+			lowWaterMark = reprogram ? 0 : BaseAddress;
-+			highWaterMark = status >= st ? EndAddress-1 : 0;
- 			switch (st) {
- 			case Init:
- 				/* Everything has an initial value... */
-@@ -286,9 +290,9 @@ namespace UpSlug2 {
- 	 */
- 	template <int characters> class CharacterProgressBar : public ProgressBar {
- 	public:
--		CharacterProgressBar(bool reprogram, int n, const char ind[NumberOfStates] = 0) :
-+		CharacterProgressBar(bool reprogram, int n, int start, int end, const char ind[NumberOfStates] = 0) :
- 			numberOfCharacters(n > characters || n < 1 ? characters : n),
--			ProgressBar(reprogram) {
-+			ProgressBar(reprogram, start, end) {
- 			if (ind)
- 				std::memcpy(indicators, ind, NumberOfStates);
- 			else
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
