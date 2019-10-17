Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E6FDAFF5
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 16:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YDBJvShg74Ozgt3neLX5Lq46xnuAZ37R+zMWLmaOxTg=; b=kj5kOG0kBfoTJ8qoxLjqH5+8A
	/+MdvTDkWX4SNvI2FIf/3Q7zeaxsVvfK3S2Zag+8SBOefu/oEePb5sU2Tsn5HGpj+82L9SZjZvUv1
	Uz+ouaQapGp6s0F2fX9K+S5DG4k3J/ys/MVGe13/pfc+/dx+jFxuV6MR7iScV30cNOWGj+taKNjg5
	VC8OFAqu6rRWb7Je4G6B7kzNqBN7SpdaWFizzf65IQC2M6FfvcQe+2oVG5uhj1OqvUA3267kEgCGl
	C0563tuOQw/pxx2sM54BEv6zGGgh4mtHVsLKAJdR9CLIvvL9fEMaPF1WY5eHSg22lUrQno/h2/0IY
	bjeMFPq0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6gb-0005fZ-99; Thu, 17 Oct 2019 14:23:29 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6gJ-0005ST-5x
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 14:23:13 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:2c5:cbce:c09a:74ff:fe7f:b715])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x9HEN05c005273
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 17 Oct 2019 16:23:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1571322181; bh=xmKx33V3UI2NVD+0l+wQOlvRvu7xCOsEt5GjQ3yXJlY=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=S4brLBouTlZl8Np8sJpSW3p+a51SOmyr3FoOS65GdXnL/xvQdEyGStqU4oTCkHUjs
 1uaZvoCcykxQk0gIuGB1Kx3wx6UFzGNZvC7zV08WYQKzld5V3dGEv+1dCkXFNseDuM
 gPAWv6qBvcUem0RbI2cLflVodQ90nxoRaa7ceVHI=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iL6g3-0006VK-LF; Thu, 17 Oct 2019 16:22:55 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Jo-Philipp Wich <jo@mein.io>
Organization: m
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
 <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net>
Date: Thu, 17 Oct 2019 16:22:55 +0200
In-Reply-To: <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net> (Jo-Philipp
 Wich's message of "Wed, 16 Oct 2019 21:54:10 +0200")
Message-ID: <87a79zpi2o.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072311_583669_CB0FB637 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: openwrt-devel@lists.openwrt.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jo-Philipp Wich <jo@mein.io> writes:

> Hi,
>
>> Does it impact OpenWrt ? or just some OpenWrt based distributions ?
>> (might influence who need to fix this ;) )
>
> it impacts the usage of the kmod compatibility repositories - apparently
> they're completely ignored by opkg.
>
> This problem was reported in the forum by a user who was unable to
> install openvpn-openssl on a 19.07 snapshot, due to the dependency on
> kmod-tun.
>
> I was able to confirm the problem locally here as well.
> While this might not strictly affect tagged builds, I still wouldn't
> like to ship 19.07 with a known broken version of opkg.

I am not sure I understand the problem correctly...

But if it is the fact that opkg doesn't try to resolve dependencies when
selecting the "best" version of a package, then maybe the attached big
hammer approach will solve it?  At least it works for me...

Without patch:

root@wrt1900ac-1:~# opkg install -V2 --noaction kmod-usb-net
opkg_conf_parse_file: Loading conf file /etc/opkg.conf.
opkg_conf_parse_file: Loading conf file /etc/opkg/customfeeds.conf.
opkg_conf_parse_file: Loading conf file /etc/opkg/distfeeds.conf.
pkg_hash_load_feeds:=20
pkg_hash_load_feeds:=20
pkg_hash_load_status_files:=20
pkg_info_preinstall_check: Updating file owner list.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-usb-net:
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.62 arm_cortex=
-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.78 arm_cortex=
-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.79 arm_cortex=
-a9_vfpv3
Installing kmod-usb-net (4.19.79-1) to root...
Downloading http://owrt.mork.no/lede/r11240+1-9d5e266cb1f1/targets/mvebu/co=
rtexa9/packages/kmod-usb-net_4.19.79-1_arm_cortex-a9_vfpv3.ipk
pkg_hash_fetch_best_installation_candidate: Using latest version of install=
ed package kernel.
pkg_hash_fetch_best_installation_candidate: Using latest version of install=
ed package kernel.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-mii:
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.62 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.78 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.79 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: No matching pkg out of 3 matchi=
ng_apkgs.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-mii:
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.62 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.78 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.79 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: Using latest version of install=
ed package kernel.
pkg_hash_fetch_best_installation_candidate: Using latest version of install=
ed package kernel.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-usb-core:
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.62 arm_corte=
x-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.78 arm_corte=
x-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.79 arm_corte=
x-a9_vfpv3
satisfy_dependencies_for: This could mean that your package list is out of =
date or that the packages
mentioned above do not yet exist (try 'opkg update'). To proceed in spite
of this problem try again with the '-force-depends' option.
opkg_configure_packages: Configuring unpacked packages.
opkg_configure_packages: Reordering packages before configuring them...
Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for =
kmod-usb-net:
 *      kernel (=3D 4.19.79-1-cddfa99a50fa71aee7f2b3bb433cac45)
 * opkg_install_cmd: Cannot install package kmod-usb-net.


With patch:

root@wrt1900ac-1:~# opkg install -V2 --noaction kmod-usb-net
opkg_conf_parse_file: Loading conf file /etc/opkg.conf.
opkg_conf_parse_file: Loading conf file /etc/opkg/customfeeds.conf.
opkg_conf_parse_file: Loading conf file /etc/opkg/distfeeds.conf.
pkg_hash_load_feeds:=20
pkg_hash_load_feeds:=20
pkg_hash_load_status_files:=20
pkg_info_preinstall_check: Updating file owner list.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-usb-net:
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.62 arm_cortex=
-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.79 arm_cortex=
-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-net 4.19.78 arm_cortex=
-a9_vfpv3
Installing kmod-usb-net (4.19.78-1) to root...
Downloading http://owrt.mork.no/lede/r11173-8184429b7b15/targets/mvebu/cort=
exa9/packages/kmod-usb-net_4.19.78-1_arm_cortex-a9_vfpv3.ipk
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-mii:
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.62 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.79 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.78 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: No matching pkg out of 3 matchi=
ng_apkgs.
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-mii:
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.62 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.79 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-mii 4.19.78 arm_cortex-a9_=
vfpv3
pkg_hash_fetch_best_installation_candidate: 3 matching pkgs for apkg=3Dkmod=
-usb-core:
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.62 arm_corte=
x-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.79 arm_corte=
x-a9_vfpv3
pkg_hash_fetch_best_installation_candidate: kmod-usb-core 4.19.78 arm_corte=
x-a9_vfpv3
Installing kmod-mii (4.19.78-1) to root...
Downloading http://owrt.mork.no/lede/r11173-8184429b7b15/targets/mvebu/cort=
exa9/packages/kmod-mii_4.19.78-1_arm_cortex-a9_vfpv3.ipk
opkg_configure_packages: Configuring unpacked packages.
opkg_configure_packages: Reordering packages before configuring them...




Bj=C3=B8rn


--=-=-=
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment;
 filename=0001-libopkg-prefer-installable-packages.patch
Content-Transfer-Encoding: quoted-printable

From 45921c3914a48c2e57787e3ba64add8701217336 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Bj=3DC3=3DB8rn=3D20Mork?=3D <bjorn@mork.no>
Date: Thu, 17 Oct 2019 13:44:38 +0200
Subject: [PATCH] libopkg: prefer installable packages
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Give packages with unresolvable dependencies a lower priority
when selecting the best candidate.  This makes it possible
to have multiple kmod package repos with higher versions
than the installed kernel, and still be able to install
the matching versions.

Signed-off-by: Bj=C3=B8rn Mork <bjorn@mork.no>
---
 libopkg/pkg.c | 24 ++++++++++++++++++++++++
 libopkg/pkg.h |  1 +
 2 files changed, 25 insertions(+)

diff --git a/libopkg/pkg.c b/libopkg/pkg.c
index e5bfe6f61b67..e9261e45019e 100644
--- a/libopkg/pkg.c
+++ b/libopkg/pkg.c
@@ -1084,10 +1084,31 @@ int pkg_version_satisfied(pkg_t * it, pkg_t * ref, =
const char *op)
 	return 0;
 }
=20
+int pkg_is_installable(const pkg_t *pkg)
+{
+	compound_depend_t *dep =3D pkg_get_depends((pkg_t *)pkg, DEPEND);
+
+	for (; dep && dep->type; dep++) {
+		int i, ok =3D 0;
+		if (dep->type !=3D DEPEND)
+			continue;
+		for (i =3D 0; i < dep->possibility_count; i++) {
+			if (pkg_dependence_satisfiable(dep->possibilities[i])) {
+				ok =3D 1;
+				break;
+			}
+		}
+		if (!ok)
+			return 0;
+	}
+	return 1;
+}
+
 int pkg_name_version_and_architecture_compare(const void *p1, const void *=
p2)
 {
 	const pkg_t * a =3D *(const pkg_t **)p1;
 	const pkg_t * b =3D *(const pkg_t **)p2;
+	int installcmp;
 	int namecmp;
 	int vercmp;
 	int arch_prio1, arch_prio2;
@@ -1097,6 +1118,9 @@ int pkg_name_version_and_architecture_compare(const v=
oid *p1, const void *p2)
 		return 0;
 	}
=20
+	installcmp =3D pkg_is_installable(a) - pkg_is_installable(b);
+	if (installcmp)
+		return installcmp;
 	namecmp =3D strcmp(a->name, b->name);
 	if (namecmp)
 		return namecmp;
diff --git a/libopkg/pkg.h b/libopkg/pkg.h
index 600fc9eaa25c..3ab48cae3813 100644
--- a/libopkg/pkg.h
+++ b/libopkg/pkg.h
@@ -248,6 +248,7 @@ int pkg_merge(pkg_t * oldpkg, pkg_t * newpkg);
 char *pkg_version_str_alloc(pkg_t * pkg);
=20
 int pkg_compare_versions(const pkg_t *pkg, const pkg_t *ref_pkg);
+int pkg_is_installable(const pkg_t * pkg);
 int pkg_name_version_and_architecture_compare(const void *a, const void *b=
);
 int abstract_pkg_name_compare(const void *a, const void *b);
=20
--=20
2.20.1


--=-=-=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=-=--

