Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0E1181691
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 12:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gnjnwrOHDOlqCjf7+ou87Svl8ZgjQWaFOtyz08AAb+w=; b=pKy5JkEv/qNskToracELivocek
	vWyPHhhxipieASOEZkEpqCCOviOrmS7V/wcz+2w1KQ7uKQwr1a7FIgkFX/Zg/bNXL/d/BfOW3B12W
	kQgCfg9WdaeGpBMA3j0GAHE8YQ/vAt1n4w1N9e6wPcyTBBaa4/8tiqI20BqFgTjyeZvtc9mMoKbjO
	Qx2GCeac/tR5lvE/qc8TGJEj3oSe6nQvpK9286ZSVfLAJLNVUfyfRPmrwZolG16K1kMkxUy5L6ozb
	/GNYjwPbyU7gNbgfi0Wvk0IFA9mPab6rclcW1iyThA/K/J9LJejulRdlV+A+URd2VEbrb0eFxOZaz
	23lZ0Z3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzIV-0001Nj-0h; Wed, 11 Mar 2020 11:13:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzIM-0001MR-L1
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 11:13:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2A28A32EB;
 Wed, 11 Mar 2020 12:12:57 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 78a4c44b;
 Wed, 11 Mar 2020 12:12:43 +0100 (CET)
Date: Wed, 11 Mar 2020 12:12:43 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200311111243.GA64333@meh.true.cz>
References: <20200311041121.1035801-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311041121.1035801-1-mail@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_041302_838026_646630C0 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v5] build: refactor JSON info files to
 `profiles.json`
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2020-03-10 18:11:21]:

> +  $$(_TARGET): $(BUILD_DIR)/json_info_files/$(call IMAGE_NAME,$(1),$(2)).json
> +  $(BUILD_DIR)/json_info_files/$(call IMAGE_NAME,$(1),$(2)).json: $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2))$$(GZ_SUFFIX)

This JSON file target is relatively long, used twice already, perhaps using
common short variable would make sense here.

>  		$(TOPDIR)/scripts/json_add_image_info.py \

You're missing here that output file argument.

> +  ROOTFS/$(1)/$(3) := \
> +	$(KDIR)/root.$(1)$$(strip \
> +		$$(if $$(FS_OPTIONS/$(1)),+fs=$$(call param_mangle,$$(FS_OPTIONS/$(1)))) \
> +	)$$(strip \
> +		$(if $(TARGET_PER_DEVICE_ROOTFS),+pkg=$$(ROOTFS_ID/$(3))) \
> +	)
> +  ifndef IB
> +    $$(ROOTFS/$(1)/$(3)): $(if $(TARGET_PER_DEVICE_ROOTFS),target-dir-$$(ROOTFS_ID/$(3)))
> +  endif
> +  $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2)): $$(KDIR_KERNEL_IMAGE) $$(ROOTFS/$(1)/$(3))
> +	@rm -f $$@
> +	[ -f $$(word 1,$$^) -a -f $$(word 2,$$^) ]
> +	$$(call concat_cmd,$(if $(IMAGE/$(2)/$(1)),$(IMAGE/$(2)/$(1)),$(IMAGE/$(2))))
> +
> +  .IGNORE: $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2))
> +
> +  $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)).gz: $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
> +	gzip -c -9n $$^ > $$@
> +
> +  $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
> +	cp $$^ $$@
> +

Is this reordering necessary? If so, I would probably do that in separate patch for
easier review.

> diff --git a/target/imagebuilder/files/Makefile b/target/imagebuilder/files/Makefile
> index 15b3d5c35c..7d5eddaff6 100644
> --- a/target/imagebuilder/files/Makefile
> +++ b/target/imagebuilder/files/Makefile
> @@ -118,6 +118,7 @@ _call_image: staging_dir/host/.prereq-build
>  	$(MAKE) package_install
>  	$(MAKE) -s prepare_rootfs
>  	$(MAKE) -s build_image
> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>  	$(MAKE) -s checksum

Seems like copy&paste from the `world` target. I think, that:

  $(MAKE) -s json_overview_image_info

would make more sense here. I would as well move that if somewhere else.

> world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-install) $(target/stamp-install) FORCE
>        $(_SINGLE)$(SUBMAKE) -r package/index
> +       $(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>         $(_SINGLE)$(SUBMAKE) -r checksum

Same here, move that if and the common place to not repeat that condition two times etc.

  $(_SINGLE)$(SUBMAKE) -r json_overview_image_info

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
