Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BA81F0C74
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 17:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=opIRel/Bgo5xjiVlDYvh0IpVI+ntKsIQUCkuBsQRxwA=; b=NSXXFV5kg3TialZlNhtJr0GsTE
	bFR5hWRN/JCrwx4Br2c2zZZL81qVx/TZwWlqoFiv3yOQPXlLO/Y7ELss9YvmZr5LFXt+fhz4LZc9o
	BvDfgb2uV6XQkGq84L2M6mEvZ7U3H2VmSscpAC8MF7W51EQR4Kp+R5N17X9CPuy5Nm2XJmNdMCSPI
	DYiXJXLc5IpxbE7Iql7vu140ov3gJF0G9f1GVSkuPzybC2ZHX4weq0ozWwGqEHWDJtg/sKTnbI9TM
	CO/RCEUMzx3vwATLLVDAOdLxEQfquH5k+48hTeQAag2SgWRZDGe/RBfkEoKzQ++pIoDxQLHjhkNbm
	HJsbI49A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhxLy-0004Z4-Ju; Sun, 07 Jun 2020 15:36:54 +0000
Received: from mail-oln040092254022.outbound.protection.outlook.com
 ([40.92.254.22] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhxLr-0004Xr-Lv
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 15:36:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZWhgaV1JRIp07rq+OTvfulRfaC/mU1QkHx7LH//a87jSYWxwlg6VkTJI4RSHA2w4E23fyKuMwIcDADjfJaWwyDrCT/c5n1J4bbvPtFtvig6FIJsMGIUf01TfnnEGg6q5KapP6rZBkGkgyDv0XJiimmZaVlsyJG2oszFvP2u/Maq/bas9ZRLGUanhuZk2YPNEiHkFSP4rzCPmPJGaQ2BjLSvUW0m+XhwNcYiZPPz3ANZC0iGMbNjcLMLZCVUelFD7rLREEsAlN7ObEiYajz4PgF4AkRMaAn/aOIVAH+bRgdCl2mwBpYemtHd6HwRbHha2D8sVwTIeEJSi1WS8PtfMAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJL7yCpnzy6WyV/1Pom5jmyL7HjVHHjAFCNwyQs/71A=;
 b=lFvq/j+ZADJki0vO3nYESqNvF/Tw4l6RjxEEYCq8zKqJeF+jOxgvYJ8TfCI8lca1BhZHalQ3guzMXYmwx52W1svIH5QrMAJfgbVDmHiIuYEbN16v2NZNtXrLmC7NhmIafYJ5hcn3uyWPoN5CyxoX7pKj83omyv2JwUGcy0mcb8OUiZEVq5zD4U8A8B14coRGaCgG5n/zTTacFfuOqtZLe27DpR3NnXO5yJuhwkDGUiQHlftzBjevtiyRdHtXHMQ+g2P/V50SG//kpzwv2t0bNqKZ0qSRXzw+6cCsZZKm/sucI7wV6WlE4T6V+0K7AJPkC7MNfGrtCd8EnDUtWFS3zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJL7yCpnzy6WyV/1Pom5jmyL7HjVHHjAFCNwyQs/71A=;
 b=OUHPBCdDoog4+Nl6KLqzQXtOprMjMpaC5VUJEK847w1g0FWibkE56f03ysl2zIJtbOjbAW1nKdVIuZ+GrAYRDg1kIB4wI4KP1ZcMdPnp9qEpiSzZ+1XZ95p+5B/wtu6GuPGscMH5IBLD3SfKJmAgPI+q4jGnKirCPH/3wAPvhBs/yRrQm5Mg6N3kZo4+Z4xFTYlli9jvwFEBSYh+Wxj2a/CuHYs6ARSRLKoyiX7HB9UmN2g3HYhfsgX65VDbvodtWCDxnrOpjFDvrN4RY1Q+5jbvH33PYzokNz81o4xc9tcnNZeIK7MS4AEpm7crZ61Idc3I2ES/E6VC6RJD2IzJ/Q==
Received: from SG2APC01FT047.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::53) by
 SG2APC01HT226.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::308)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Sun, 7 Jun
 2020 15:36:41 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebd::43) by SG2APC01FT047.mail.protection.outlook.com
 (2a01:111:e400:7ebd::428) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Sun, 7 Jun 2020 15:36:41 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:1F5836F2BAE78B77AD73D6987E9300599A99FB5A45266021F39D0335931DDD7C;
 UpperCasedChecksum:507A31B66C7AD413D25C80D759B90C71E8096AA9FFF1F1CC375773EE417F907B;
 SizeAsReceived:7547; Count:49
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3066.023; Sun, 7 Jun 2020
 15:36:41 +0000
Date: Sun, 7 Jun 2020 16:36:34 +0100
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <KU1PR01MB20228E82E4FEE27988120E69AD840@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <20200606185223.9749-1-rosenp@gmail.com>
References: <20200606185223.9749-1-rosenp@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: LNXP265CA0078.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::18) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200607163634.1aded76b@azeroth>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth (80.3.14.56) by LNXP265CA0078.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Sun, 7 Jun 2020 15:36:40 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Microsoft-Original-Message-ID: <20200607163634.1aded76b@azeroth>
X-TMN: [OOuxIxj+5Rep81VpqogZZmxYz2SM+SVU]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d59908bd-75e9-4457-e95b-08d80af892fd
X-MS-TrafficTypeDiagnostic: SG2APC01HT226:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ih1N9EjZlG8zbCXJALieusgXLDqnzqyY+ilQDwCd9LJfb0njFkxr+7H9IUUGhUBs9EXCDIKfILj5tFFepTsbyaqJuak63t+GGMieeVi0FufunmK9gEhNsxHWHvtxYZpZa1b6ssd1+QJ0sFK6RpiyjUcPB0OrzoXgiKIdifTann/CAZE0nT3tAaS4EYIchitDQHxyHHTMG2nRjSTj5gqSfF0PmmTSRflo0euTKj7cuoV2SvusBbDdrXv2DAmsqORu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Z5hjd/VD48D3GRps3ugxXnra8ZSxP+Sxu3TxamsgTgCupuuZcSLj9BCLJt51wd/bRrJMUpqQVmhSvoC74tHKngOYpYbCXjHQnJkgUiHU7mcJmfur/y5V6PUiElQf4txwscMfEf9fOaG0dUHtn6AmcQ==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d59908bd-75e9-4457-e95b-08d80af892fd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2020 15:36:40.9634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_083647_800973_87A03278 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.254.22 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.254.22 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] libcxxabi: add
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

On Sat,  6 Jun 2020 11:52:22 -0700 Rosen Penev <rosenp@gmail.com> wrote:

> This will be used for libcxx.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/libcxxabi/Makefile | 71 +++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 package/libs/libcxxabi/Makefile
> 
> diff --git a/package/libs/libcxxabi/Makefile b/package/libs/libcxxabi/Makefile
> new file mode 100644
> index 0000000000..90547561b2
> --- /dev/null
> +++ b/package/libs/libcxxabi/Makefile
> @@ -0,0 +1,71 @@
> +
> +#
> +# This is free software, licensed under the GNU General Public License v2.
> +# See /LICENSE for more information.
> +#
> +
> +include $(TOPDIR)/rules.mk
> +
> +PKG_NAME:=libcxxabi
> +PKG_VERSION:=10.0.0
> +PKG_RELEASE:=1
> +
> +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
> +PKG_SOURCE_URL:=https://github.com/llvm/llvm-project/releases/download/llvmorg-$(PKG_VERSION)
> +PKG_HASH:=e71bac75a88c9dde455ad3f2a2b449bf745eafd41d2d8432253b2964e0ca14e1
> +PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
> +
> +PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
> +PKG_LICENSE:=MIT
> +PKG_LICENSE_FILES:=LICENSE.txt
> +
> +PKG_BUILD_PARALLEL:=1
> +CMAKE_BINARY_SUBDIR:=build
> +
> +include $(INCLUDE_DIR)/package.mk
> +include $(INCLUDE_DIR)/cmake.mk
> +
> +define Package/libcxxabi
> +  SECTION:=libs
> +  CATEGORY:=Libraries
> +  TITLE:=LLVM lib++abi
> +  URL:=https://libcxxabi.llvm.org/
> +  DEPENDS:=+libpthread
> +  BUILDONLY:=1
> +endef
> +
> +define Package/libcxxabi/description
> +  libc++abi is a new implementation of low level support for a standard C++ library.
> +endef
> +
> +CMAKE_OPTIONS += \
> +	-DLIBCXXABI_ENABLE_EXCEPTIONS=ON \
> +	-DLIBCXXABI_ENABLE_PEDANTIC=OFF \
> +	-DLIBCXXABI_ENABLE_PIC=ON \
> +	-DLIBCXXABI_ENABLE_WERROR=OFF \
> +	-DLIBCXXABI_USE_LLVM_UNWINDER=OFF \
> +	-DLIBCXXABI_USE_COMPILER_RT=OFF \
> +	-DLIBCXXABI_ENABLE_THREADS=ON \
> +	-DLIBCXXABI_HAS_PTHREAD_API=ON \
> +	-DLIBCXXABI_INCLUDE_TESTS=OFF \
> +	-DLIBCXXABI_LIBDIR_SUFFIX="" \
> +	-DLIBCXXABI_INSTALL_LIBRARY=ON \
> +	-DLIBCXXABI_ENABLE_SHARED=OFF \
> +	-DLIBCXXABI_LIBCXX_SRC_DIR=$(BUILD_DIR)/libcxx-$(PKG_VERSION).src \
> +	-DLIBCXXABI_LIBCXX_INCLUDES=$(BUILD_DIR)/libcxx-$(PKG_VERSION).src/include
> +
> +TARGET_CXXFLAGS += -flto
> +TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
> +
> +define Build/Prepare
> +	$(MAKE) -C $(TOPDIR)/package/libs/libcxx prepare
> +	$(call Build/Prepare/Default)
> +endef
> +
> +define Build/InstallDev
> +	$(call Build/InstallDev/cmake,$(1))
> +	$(INSTALL_DIR) $(1)/usr/include/
> +	$(INSTALL_DATA) $(PKG_BUILD_DIR)/include/*.h $(1)/usr/include/
> +endef
> +
> +$(eval $(call BuildPackage,libcxxabi))

Reviewed-by: Ian Cooper <iancooper@hotmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
