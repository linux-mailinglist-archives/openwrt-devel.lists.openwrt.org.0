Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581131D140B
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 15:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CzfdibOKTfC6NX1EsMkNjBsUfEWzYO7mpZBI4sqbL8c=; b=TE1cvlXg4jI0Sl
	FqOyAEh11BMkRVwsNE3g/9JyZcyldfeMAHWEC0F0ZGpeD5CE/oUbG6YWyNmbCqPeGTcaIf0abfwG4
	1x9UkkGntUbgAJlAN4G1zfuAo0WNPxOkYdojXNxNdqp/ijtfbn9KGlzuAWNlVfQxyhqBJ4kwjY8Ds
	iv5fU6hb34g3ux4D4JZJx6bRW975CjijXK7eb/Lp1LBi83VtV1S87tDMws7h9OW3E+GSoHLdU0PNZ
	e+/Ss4w6zbe2JRp/HkOuhyLDeDyZIKKQZsdwVGO2HORECJlMywfdlFyyscxRI0X7E/kxiUyvXzVuT
	YdMyaIDx1Mftq+sKW1jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr8G-0004Vc-0y; Wed, 13 May 2020 13:09:08 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr7q-0004Ih-IF
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 13:08:45 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MD9Gh-1jPkJz0rQ1-0096jM for <openwrt-devel@lists.openwrt.org>; Wed, 13
 May 2020 15:08:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 15:07:18 +0200
Message-Id: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:y8aqmo5JZ58w0ju7mqtGcUbduiMILGpF6QAfUdTPxEX479cOoKA
 oj8Jj5BRz3+e4BlTYXBaWueYns6e2mXkazeWALGXJgi8jbddCNM55XGS0j1oOjj2G3hlYJ9
 Jzb2io6OM0J4J6JkZM538MEtH12mJ3M8YMRyqPDxUXv3eTNoJQ2SSKBLj4ew4jb2wgMEveh
 3SD7LCZ1ojwTkeg9YI6VA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ovj3OFcEwRc=:lsL5PiHfBw2edZYftmpmn1
 wus0JQ82mTMUR26i2LV5XeoSMhIW7fX2ug0FjDox+ka4Z00/lSd7bf+fQ7NqLXXbp0gQIclPC
 z8b4HWCbHko5nRZwICK8g3O21jEwkT3t21MaF7IexYrDSnD9fxyfNWge8T46Zj8xPKLRwyZKR
 px4cQyOjzZJaKtSDNcoFrZSjDLL1ElcYkbvcl4bLSyXF9AVTCd9C+7UPyjoNOj/93sK6NnygJ
 UI2yh6/UFq0pfN4186LC9yHqYk34FYm01KMBJaRWxfNSZ0r8VROh7JAphnRlV6nsTSZv9G12G
 QmnDQSV2RYRTTktjaRZzAQA77GVEEXbE0UM/E2C0vPxuSmJrt7flMNI9XYlsSwBNHBpF25oIg
 sv812NUOb7x4gzh/StDGLUV+2m60itOdXUho66boy+jfxU5v22v+mbsPlloTxR2KhXXBDxtHY
 BHpG+xFFpKoSHYIVdXHaIxZgL4Rh6olcr+d7CXcm1BhPnUPsPAFbKHlzHxDtDRjFSziQbpNJQ
 pZOCNhFrBAfk3CF39+2sZdDKfUvKodNxIOY8dsBTIWUmsGYt1yBle9Hp7s3CnT2JmtqExnWra
 iYf6SQE0rHKRdJe/KAHFIzABomJl5xuQD5IPu429Hx0Xsu5WqrmwZXxVHFMOHKe7oc9gcQXar
 H68MK2cs/5IBPJNMsuAHeAeAfsAcu/nxKrs0hEi6hrrl4PNtoaiL6YX7rVHWIiVd2SoZieZ/+
 MklV2zgAr8jbFm9+o5HATHGoRFhFFEK/o1miDjU5BaoKonZAGI+gWFs57x7n8USkbO386GRbX
 ToE5kqD0w0iaKORTOGFgjVazWHRFQAECiZuhC4yvjWz/U6XrQdbVFBZs3/9l1wrLh2G618h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060842_900735_157A5A12 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 1/4] kernel: drop outdated kernel version
 switches for local code
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

This drops kernel version switches for versions not supported by
OpenWrt master at the moment. This only adjusts local code, but
doesn't touch patches to existing external packages.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../kernel/gpio-nct5104d/src/gpio-nct5104d.c  | 22 ----------
 .../ltq-adsl-mei/src/ifxmips_mei_interface.h  |  6 ---
 .../lantiq/ltq-atm/src/ifxmips_atm_vr9.c      |  2 -
 package/kernel/lantiq/ltq-atm/src/ltq_atm.c   |  4 --
 .../kernel/lantiq/ltq-deu/src/ifxmips_aes.c   | 12 ------
 .../lantiq/ltq-deu/src/ifxmips_async_aes.c    |  4 --
 .../lantiq/ltq-deu/src/ifxmips_async_des.c    | 14 -------
 .../kernel/lantiq/ltq-deu/src/ifxmips_des.c   | 11 -----
 .../kernel/lantiq/ltq-deu/src/ifxmips_deu.c   |  6 ---
 .../lantiq/ltq-deu/src/ifxmips_deu_dma.h      |  4 --
 .../lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c     | 40 -------------------
 .../lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c     | 35 ----------------
 .../lantiq/ltq-ptm/src/ifxmips_ptm_vr9.c      |  2 -
 package/kernel/leds-apu2/src/leds-apu2.c      |  9 -----
 package/kernel/rtc-rv5c386a/src/rtc.c         |  3 --
 15 files changed, 174 deletions(-)

diff --git a/package/kernel/gpio-nct5104d/src/gpio-nct5104d.c b/package/kernel/gpio-nct5104d/src/gpio-nct5104d.c
index 8da7580562..8f180edd33 100644
--- a/package/kernel/gpio-nct5104d/src/gpio-nct5104d.c
+++ b/package/kernel/gpio-nct5104d/src/gpio-nct5104d.c
@@ -276,11 +276,7 @@ static int nct5104d_gpio_probe(struct platform_device *pdev)
 	for (i = 0; i < data->nr_bank; i++) {
 		struct nct5104d_gpio_bank *bank = &data->bank[i];
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-		bank->chip.dev = &pdev->dev;
-#else
 		bank->chip.parent = &pdev->dev;
-#endif
 		bank->data = data;
 
 		err = gpiochip_add(&bank->chip);
@@ -298,15 +294,7 @@ err_gpiochip:
 	for (i = i - 1; i >= 0; i--) {
 		struct nct5104d_gpio_bank *bank = &data->bank[i];
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0)
-		int rm_err = gpiochip_remove(&bank->chip);
-		if (rm_err < 0)
-			dev_err(&pdev->dev,
-				"Failed to remove gpiochip %d: %d\n",
-				i, rm_err);
-#else /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 		gpiochip_remove (&bank->chip);
-#endif /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 	}
 
 	return err;
@@ -320,17 +308,7 @@ static int nct5104d_gpio_remove(struct platform_device *pdev)
 	for (i = 0; i < data->nr_bank; i++) {
 		struct nct5104d_gpio_bank *bank = &data->bank[i];
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0)
-		int err = gpiochip_remove(&bank->chip);
-		if (err) {
-			dev_err(&pdev->dev,
-				"Failed to remove GPIO gpiochip %d: %d\n",
-				i, err);
-			return err;
-		}
-#else /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 		gpiochip_remove (&bank->chip);
-#endif /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 	}
 
 	return 0;
diff --git a/package/kernel/lantiq/ltq-adsl-mei/src/ifxmips_mei_interface.h b/package/kernel/lantiq/ltq-adsl-mei/src/ifxmips_mei_interface.h
index dc9f1c241b..e5089c43a3 100644
--- a/package/kernel/lantiq/ltq-adsl-mei/src/ifxmips_mei_interface.h
+++ b/package/kernel/lantiq/ltq-adsl-mei/src/ifxmips_mei_interface.h
@@ -111,11 +111,7 @@ static inline long
 ugly_hack_sleep_on_timeout(wait_queue_head_t *q, long timeout)
 {
 	unsigned long flags;
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,13,0))
 	wait_queue_entry_t wait;
-#else
-	wait_queue_t wait;
-#endif
 
 	init_waitqueue_entry(&wait, current);
 
@@ -523,9 +519,7 @@ typedef struct DSL_DEV_Device
 #define IFX_DFEIR		0
 #define IFX_DYING_GASP	1
 	DSL_DEV_MeiDebug_t lop_debugwr;  /* dying gasp */
-#if (LINUX_VERSION_CODE > KERNEL_VERSION(2,6,0))
 	struct module *owner;
-#endif
 } DSL_DEV_Device_t;			/* ifx_adsl_device_t */
 
 #define DSL_DEV_PRIVATE(dev)  ((ifx_mei_device_private_t*)(dev->pPriv))
diff --git a/package/kernel/lantiq/ltq-atm/src/ifxmips_atm_vr9.c b/package/kernel/lantiq/ltq-atm/src/ifxmips_atm_vr9.c
index 8638b12b4e..85f27156b5 100644
--- a/package/kernel/lantiq/ltq-atm/src/ifxmips_atm_vr9.c
+++ b/package/kernel/lantiq/ltq-atm/src/ifxmips_atm_vr9.c
@@ -60,7 +60,6 @@
 
 static inline void vr9_reset_ppe(struct platform_device *pdev)
 {
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,14,0)
 	struct device *dev = &pdev->dev;
 	struct reset_control *dsp;
 	struct reset_control *dfe;
@@ -97,7 +96,6 @@ static inline void vr9_reset_ppe(struct platform_device *pdev)
 	udelay(1000);
 	*PP32_SRST |= 0x000303CF;
 	udelay(1000);
-#endif
 }
 
 static inline int vr9_pp32_download_code(int pp32, u32 *code_src, unsigned int code_dword_len, u32 *data_src, unsigned int data_dword_len)
diff --git a/package/kernel/lantiq/ltq-atm/src/ltq_atm.c b/package/kernel/lantiq/ltq-atm/src/ltq_atm.c
index 267a515df6..f5dbfaae2d 100644
--- a/package/kernel/lantiq/ltq-atm/src/ltq_atm.c
+++ b/package/kernel/lantiq/ltq-atm/src/ltq_atm.c
@@ -1809,11 +1809,7 @@ static int ltq_atm_probe(struct platform_device *pdev)
 	}
 
 	/*  register interrupt handler  */
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,1,0)
 	ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, 0, "atm_mailbox_isr", &g_atm_priv_data);
-#else
-	ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, IRQF_DISABLED, "atm_mailbox_isr", &g_atm_priv_data);
-#endif
 	if ( ret ) {
 		if ( ret == -EBUSY ) {
 			pr_err("IRQ may be occupied by other driver, please reconfig to disable it.\n");
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_aes.c b/package/kernel/lantiq/ltq-deu/src/ifxmips_aes.c
index 6c8d065d8b..76abfafb4e 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_aes.c
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_aes.c
@@ -895,18 +895,6 @@ int ifxdeu_init_aes (void)
     int ret = -ENOSYS;
 
 
- 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(2,6,20))
-    if (!disable_multiblock) {
-        ifxdeu_aes_alg.cra_u.cipher.cia_max_nbytes = AES_BLOCK_SIZE;    //(size_t)-1;
-        ifxdeu_aes_alg.cra_u.cipher.cia_req_align = 16;
-        ifxdeu_aes_alg.cra_u.cipher.cia_ecb = ifx_deu_aes_ecb;
-        ifxdeu_aes_alg.cra_u.cipher.cia_cbc = ifx_deu_aes_cbc;
-        ifxdeu_aes_alg.cra_u.cipher.cia_cfb = ifx_deu_aes_cfb;
-        ifxdeu_aes_alg.cra_u.cipher.cia_ofb = ifx_deu_aes_ofb;
-    }
-#endif
-
     if ((ret = crypto_register_alg(&ifxdeu_aes_alg)))
         goto aes_err;
 
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_async_aes.c b/package/kernel/lantiq/ltq-deu/src/ifxmips_async_aes.c
index 15e1485912..dcd059371f 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_async_aes.c
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_async_aes.c
@@ -100,11 +100,7 @@ extern char debug_level;
 
 
 static int disable_multiblock = 0;
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,4,0)
 module_param(disable_multiblock, int, 0);
-#else
-MODULE_PARM_DESC(disable_multiblock, "Disable encryption of whole multiblock buffers");
-#endif
 
 static int disable_deudma = 1;
 
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_async_des.c b/package/kernel/lantiq/ltq-deu/src/ifxmips_async_des.c
index ea94c6460f..1523763ccd 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_async_des.c
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_async_des.c
@@ -117,11 +117,7 @@ struct des_ctx {
 
 
 static int disable_multiblock = 0;
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,4,0)
 module_param(disable_multiblock, int, 0);
-#else
-MODULE_PARM_DESC(disable_multiblock, "Disable encryption of whole multiblock buffers");
-#endif
 
 static int disable_deudma = 1;
 
@@ -893,16 +889,6 @@ int __init lqdeu_async_des_init (void)
 {
     int i, j, ret = -EINVAL;
 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(2,6,20))
-     if (!disable_multiblock) {
-                ifxdeu_des_alg.cra_u.cipher.cia_max_nbytes = DES_BLOCK_SIZE;    //(size_t)-1;
-                ifxdeu_des_alg.cra_u.cipher.cia_req_align = 16;
-                ifxdeu_des_alg.cra_u.cipher.cia_ecb = ifx_deu_des_ecb;
-                ifxdeu_des_alg.cra_u.cipher.cia_cbc = ifx_deu_des_cbc;
-                ifxdeu_des_alg.cra_u.cipher.cia_cfb = ifx_deu_des_cfb;
-                ifxdeu_des_alg.cra_u.cipher.cia_ofb = ifx_deu_des_ofb;
-        }
-#endif
      for (i = 0; i < ARRAY_SIZE(des_drivers_alg); i++) {
          ret = crypto_register_alg(&des_drivers_alg[i].alg);
 	 //printk("driver: %s\n", des_drivers_alg[i].alg.cra_name);
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_des.c b/package/kernel/lantiq/ltq-deu/src/ifxmips_des.c
index beb67075ee..6d7d82fcb9 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_des.c
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_des.c
@@ -691,17 +691,6 @@ int ifxdeu_init_des (void)
     int ret = -ENOSYS;
 
 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(2,6,20))
-     if (!disable_multiblock) {
-                ifxdeu_des_alg.cra_u.cipher.cia_max_nbytes = DES_BLOCK_SIZE;    //(size_t)-1;
-                ifxdeu_des_alg.cra_u.cipher.cia_req_align = 16;
-                ifxdeu_des_alg.cra_u.cipher.cia_ecb = ifx_deu_des_ecb;
-                ifxdeu_des_alg.cra_u.cipher.cia_cbc = ifx_deu_des_cbc;
-                ifxdeu_des_alg.cra_u.cipher.cia_cfb = ifx_deu_des_cfb;
-                ifxdeu_des_alg.cra_u.cipher.cia_ofb = ifx_deu_des_ofb;
-        }
-#endif
-
         ret = crypto_register_alg(&ifxdeu_des_alg);
         if (ret < 0)
                 goto des_err;
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c b/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c
index 05f168160b..3947b31a40 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c
@@ -171,14 +171,8 @@ static int ltq_deu_remove(struct platform_device *pdev)
 
 int disable_multiblock = 0;
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,4,0)
 module_param(disable_multiblock,int,0);
 
-#else
-//MODULE_PARM (disable_multiblock, "i");
-MODULE_PARM_DESC (disable_multiblock,
-          "Disable encryption of whole multiblock buffers.");
-#endif
 
 static const struct of_device_id ltq_deu_match[] = {
 #ifdef CONFIG_DANUBE
diff --git a/package/kernel/lantiq/ltq-deu/src/ifxmips_deu_dma.h b/package/kernel/lantiq/ltq-deu/src/ifxmips_deu_dma.h
index b64d74776b..7a1b85f1d1 100644
--- a/package/kernel/lantiq/ltq-deu/src/ifxmips_deu_dma.h
+++ b/package/kernel/lantiq/ltq-deu/src/ifxmips_deu_dma.h
@@ -54,11 +54,7 @@ typedef struct ifx_deu_device {
 	int recv_count;
 	int packet_size;
 	int packet_num;
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,13,0))
 	wait_queue_entry_t wait;
-#else
-	wait_queue_t wait;
-#endif
 } _ifx_deu_device;
 
 extern _ifx_deu_device ifx_deu[1];
diff --git a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c
index 186c848693..18c715a290 100644
--- a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c
+++ b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c
@@ -61,12 +61,8 @@
  *        Kernel Version Adaption
  * ####################################
  */
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,11)
   #define MODULE_PARM_ARRAY(a, b)   module_param_array(a, int, NULL, 0)
   #define MODULE_PARM(a, b)         module_param(a, int, 0)
-#else
-  #define MODULE_PARM_ARRAY(a, b)   MODULE_PARM(a, b)
-#endif
 
 
 
@@ -130,9 +126,6 @@ static int ptm_stop(struct net_device *);
   static unsigned int ptm_poll(int, unsigned int);
   static int ptm_napi_poll(struct napi_struct *, int);
 static int ptm_hard_start_xmit(struct sk_buff *, struct net_device *);
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-static int ptm_change_mtu(struct net_device *, int);
-#endif
 static int ptm_ioctl(struct net_device *, struct ifreq *, int);
 static void ptm_tx_timeout(struct net_device *);
 
@@ -243,7 +236,6 @@ static INLINE void init_tables(void);
 
 static struct ptm_priv_data g_ptm_priv_data;
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,32)
 static struct net_device_ops g_ptm_netdev_ops = {
     .ndo_get_stats       = ptm_get_stats,
     .ndo_open            = ptm_open,
@@ -251,13 +243,9 @@ static struct net_device_ops g_ptm_netdev_ops = {
     .ndo_start_xmit      = ptm_hard_start_xmit,
     .ndo_validate_addr   = eth_validate_addr,
     .ndo_set_mac_address = eth_mac_addr,
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-    .ndo_change_mtu      = ptm_change_mtu,
-#endif
     .ndo_do_ioctl        = ptm_ioctl,
     .ndo_tx_timeout      = ptm_tx_timeout,
 };
-#endif
 
 static struct net_device *g_net_dev[2] = {0};
 static char *g_net_dev_name[2] = {"dsl0", "dslfast0"};
@@ -291,10 +279,8 @@ static void ptm_setup(struct net_device *dev, int ndev)
 
     /*  hook network operations */
     dev->netdev_ops      = &g_ptm_netdev_ops;
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,10,0))
     /* Allow up to 1508 bytes, for RFC4638 */
     dev->max_mtu         = ETH_DATA_LEN + 8;
-#endif
     netif_napi_add(dev, &g_ptm_priv_data.itf[ndev].napi, ptm_napi_poll, 25);
     dev->watchdog_timeo  = ETH_WATCHDOG_TIMEOUT;
 
@@ -415,11 +401,7 @@ static int ptm_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
     /*  allocate descriptor */
     desc_base = get_tx_desc(ndev, &f_full);
     if ( f_full ) {
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,7,0)
         netif_trans_update(dev);
-#else
-        dev->trans_start = jiffies;
-#endif
         netif_stop_queue(dev);
 
         IFX_REG_W32_MASK(0, 1 << (ndev + 16), MBOX_IGU1_ISRC);
@@ -453,11 +435,7 @@ static int ptm_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
     g_ptm_priv_data.itf[ndev].stats.tx_packets++;
     g_ptm_priv_data.itf[ndev].stats.tx_bytes += reg_desc.datalen;
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,7,0)
     netif_trans_update(dev);
-#else
-    dev->trans_start = jiffies;
-#endif
     mailbox_signal(ndev, 1);
 
     adsl_led_flash();
@@ -469,16 +447,6 @@ PTM_HARD_START_XMIT_FAIL:
     g_ptm_priv_data.itf[ndev].stats.tx_dropped++;
     return NETDEV_TX_OK;
 }
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-static int ptm_change_mtu(struct net_device *dev, int mtu)
-{
-	/* Allow up to 1508 bytes, for RFC4638 */
-        if (mtu < 68 || mtu > ETH_DATA_LEN + 8)
-                return -EINVAL;
-        dev->mtu = mtu;
-        return 0;
-}
-#endif
 
 static int ptm_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 {
@@ -665,10 +633,6 @@ static INLINE int mailbox_rx_irq_handler(unsigned int ch)   //  return: < 0 - de
             skb->dev = g_net_dev[ndev];
             skb->protocol = eth_type_trans(skb, skb->dev);
 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,11,0))
-            g_net_dev[ndev]->last_rx = jiffies;
-#endif
-
             netif_rx_ret = netif_receive_skb(skb);
 
             if ( netif_rx_ret != NET_RX_DROP ) {
@@ -1513,11 +1477,7 @@ static int ltq_ptm_probe(struct platform_device *pdev)
     }
 
     /*  register interrupt handler  */
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,1,0)
     ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, 0, "ptm_mailbox_isr", &g_ptm_priv_data);
-#else
-    ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, IRQF_DISABLED, "ptm_mailbox_isr", &g_ptm_priv_data);
-#endif
     if ( ret ) {
         if ( ret == -EBUSY ) {
             err("IRQ may be occupied by other driver, please reconfig to disable it.");
diff --git a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c
index 46a52e29d8..f77f475656 100644
--- a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c
+++ b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c
@@ -76,9 +76,6 @@ static int ptm_stop(struct net_device *);
   static unsigned int ptm_poll(int, unsigned int);
   static int ptm_napi_poll(struct napi_struct *, int);
 static int ptm_hard_start_xmit(struct sk_buff *, struct net_device *);
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-static int ptm_change_mtu(struct net_device *, int);
-#endif
 static int ptm_ioctl(struct net_device *, struct ifreq *, int);
 static void ptm_tx_timeout(struct net_device *);
 
@@ -119,9 +116,6 @@ static struct net_device_ops g_ptm_netdev_ops = {
     .ndo_start_xmit      = ptm_hard_start_xmit,
     .ndo_validate_addr   = eth_validate_addr,
     .ndo_set_mac_address = eth_mac_addr,
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-    .ndo_change_mtu      = ptm_change_mtu,
-#endif
     .ndo_do_ioctl        = ptm_ioctl,
     .ndo_tx_timeout      = ptm_tx_timeout,
 };
@@ -147,10 +141,8 @@ static void ptm_setup(struct net_device *dev, int ndev)
     netif_carrier_off(dev);
 
     dev->netdev_ops      = &g_ptm_netdev_ops;
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,10,0))
     /* Allow up to 1508 bytes, for RFC4638 */
     dev->max_mtu         = ETH_DATA_LEN + 8;
-#endif
     netif_napi_add(dev, &g_ptm_priv_data.itf[ndev].napi, ptm_napi_poll, 16);
     dev->watchdog_timeo  = ETH_WATCHDOG_TIMEOUT;
 
@@ -228,10 +220,6 @@ static unsigned int ptm_poll(int ndev, unsigned int work_to_do)
             skb->dev = g_net_dev[0];
             skb->protocol = eth_type_trans(skb, skb->dev);
 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,11,0))
-            g_net_dev[0]->last_rx = jiffies;
-#endif
-
             netif_receive_skb(skb);
 
             g_ptm_priv_data.itf[0].stats.rx_packets++;
@@ -301,11 +289,7 @@ static int ptm_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
     /*  allocate descriptor */
     desc_base = get_tx_desc(0, &f_full);
     if ( f_full ) {
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,7,0)
         netif_trans_update(dev);
-#else
-        dev->trans_start = jiffies;
-#endif
         netif_stop_queue(dev);
 
         IFX_REG_W32_MASK(0, 1 << 17, MBOX_IGU1_ISRC);
@@ -367,11 +351,7 @@ static int ptm_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
     wmb();
     *(volatile unsigned int *)desc = *(unsigned int *)&reg_desc;
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,7,0)
     netif_trans_update(dev);
-#else
-    dev->trans_start = jiffies;
-#endif
 
     return 0;
 
@@ -382,17 +362,6 @@ PTM_HARD_START_XMIT_FAIL:
     return 0;
 }
 
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0))
-static int ptm_change_mtu(struct net_device *dev, int mtu)
-{
-	/* Allow up to 1508 bytes, for RFC4638 */
-        if (mtu < 68 || mtu > ETH_DATA_LEN + 8)
-                return -EINVAL;
-        dev->mtu = mtu;
-        return 0;
-}
-#endif
-
 static int ptm_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 {
     ASSERT(dev == g_net_dev[0], "incorrect device");
@@ -1024,11 +993,7 @@ static int ltq_ptm_probe(struct platform_device *pdev)
     }
 
     /*  register interrupt handler  */
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,1,0)
     ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, 0, "ptm_mailbox_isr", &g_ptm_priv_data);
-#else
-    ret = request_irq(PPE_MAILBOX_IGU1_INT, mailbox_irq_handler, IRQF_DISABLED, "ptm_mailbox_isr", &g_ptm_priv_data);
-#endif
     if ( ret ) {
         if ( ret == -EBUSY ) {
             err("IRQ may be occupied by other driver, please reconfig to disable it.");
diff --git a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vr9.c b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vr9.c
index cf0897b563..bf93437fb0 100644
--- a/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vr9.c
+++ b/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vr9.c
@@ -84,7 +84,6 @@ static inline void uninit_pmu(void)
 
 static inline void reset_ppe(struct platform_device *pdev)
 {
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,14,0)
 	struct device *dev = &pdev->dev;
 	struct reset_control *dsp;
 	struct reset_control *dfe;
@@ -121,7 +120,6 @@ static inline void reset_ppe(struct platform_device *pdev)
 	udelay(1000);
 	*PP32_SRST |= 0x000303CF;
 	udelay(1000);
-#endif
 }
 
 static inline void init_pdma(void)
diff --git a/package/kernel/leds-apu2/src/leds-apu2.c b/package/kernel/leds-apu2/src/leds-apu2.c
index ff13b3cde1..ef125c8768 100644
--- a/package/kernel/leds-apu2/src/leds-apu2.c
+++ b/package/kernel/leds-apu2/src/leds-apu2.c
@@ -194,11 +194,7 @@ static int gpio_apu2_probe (struct platform_device *dev)
 		}
 	}
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-	gpio_apu2_chip.dev = &dev->dev;
-#else
 	gpio_apu2_chip.parent = &dev->dev;
-#endif
 	ret = gpiochip_add (&gpio_apu2_chip);
 	if (ret) {
 		pr_err ("%s: adding gpiochip failed\n", DEVNAME);
@@ -209,12 +205,7 @@ static int gpio_apu2_probe (struct platform_device *dev)
 
 static int gpio_apu2_remove (struct platform_device *dev)
 {
-#if LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0)
-	int ret;
-	ret = gpiochip_remove (&gpio_apu2_chip);
-#else /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 	gpiochip_remove (&gpio_apu2_chip);
-#endif /* LINUX_VERSION_CODE < KERNEL_VERSION(3,18,0) */
 	return 0;
 }
 
diff --git a/package/kernel/rtc-rv5c386a/src/rtc.c b/package/kernel/rtc-rv5c386a/src/rtc.c
index 96dc56eb36..0c00c41f96 100644
--- a/package/kernel/rtc-rv5c386a/src/rtc.c
+++ b/package/kernel/rtc-rv5c386a/src/rtc.c
@@ -57,9 +57,6 @@
 #include <linux/uaccess.h>
 
 #include <asm/current.h>
-#if LINUX_VERSION_CODE < KERNEL_VERSION(3,4,0)
-#include <asm/system.h>
-#endif
 
 #include <bcm47xx.h>
 #include <linux/bcm47xx_nvram.h>
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
