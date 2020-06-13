Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447ED1F81C0
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 10:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DtwIxZmPmFoQzUk/qA6iTJFeWgZ9byMkl5SR6TGQ9L8=; b=VU1jCNTFiZnIZR
	YIqhxKhm8LiXlEXJAx+A9TvjjdhVm+WTOa5tFqEJEZSgxCikQXS+ofeBilkNVpbokydI8u3JaU0Ot
	ys0+QhwmCuXBUCUjX+rw2GIzUnWEclmeA/BZfxBbMVWLoTPOG/SWuhYQTSiRhG5nIB0FubA/Jm0c7
	jTo7bdsydE/QOZVTMD8PL5N7is5IDZIKxbrOBUgamIYk2hibABLvccuX+GZCEf9nuNJrhN+jecyNt
	7IsecWBCmlQlsFGn1++qRfoY8XZhNy4gPedVULvVOtPlKn/iT2e0pPW5sFAoKOi+lovBdm3Nlcahb
	kcTbFX6Z/ZwuRIPNXLLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Kw-0002Qr-JO; Sat, 13 Jun 2020 08:16:22 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1Kq-0002Pg-VR
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 08:16:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 4B8E5C07CD
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jun 2020 10:16:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snsrIo7JIfPD for <openwrt-devel@lists.openwrt.org>;
 Sat, 13 Jun 2020 10:16:08 +0200 (CEST)
Received: from [192.168.1.221] (ip-84-119-114-184.unity-media.net
 [84.119.114.184])
 by mail.softart-ge.com (Postfix) with ESMTPA id 8B490C0212
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jun 2020 10:16:08 +0200 (CEST)
From: Reiner Karlsberg <karlsberg@softart-ge.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <0ad5f642-bb2c-f6dc-49b0-5b4d85ec04ad@softart-ge.com>
Date: Sat, 13 Jun 2020 10:16:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_011617_156264_50148074 
X-CRM114-Status: UNSURE (   3.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Build error on latest trunk: mariadb
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

cd "/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/mariadb-10.4.13/ipkg-install/usr/bin"; find . -maxdepth 1 -type 
l -regex './mariadb[-]*' | xargs  -I{} cp -fpR {} 
"/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/mariadb-10.4.13/ipkg-mipsel_24kc/mariadb-client/usr/bin"; 
install -m0755 /etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/mariadb-10.4.13/ipkg-install/usr/bin/mysql_upgrade 
/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/mariadb-10.4.13/ipkg-mipsel_24kc/mariadb-client/usr/bin
install: cannot stat 
'/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/mariadb-10.4.13/ipkg-install/usr/bin/mysql_upgrade': No such file 
or directory

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
