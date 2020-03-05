Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAF017A4DF
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 13:05:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pu83+jRz43Yx5e7w+4PC5MMt7RIUogYmTJr6sSoknf0=; b=mdzxmnOVlvPO5fah2jAZytD/S
	/NdYLSwQEfv2rAPmQr1OHbXzPd0FFRHpxUVvwZ5QhUETZtC4VQcDEdfERaFePNx4nTXlNDJZkTQW4
	G0C/Um4U9TtWg5sgxDeVXWOo9VyftoagEBQRePRH4ZeMySDUobSSYYVmTJiLEPTxINdQt5UPUGnm0
	ZF63OfDd1P+0gZy43nISPaGLvS5wwPVWcwLbtXrbZBzJsOXO2JphRGjpe811ZAjyXKjrj+DYSEXqM
	huilifVaMVR8JRy7bae7hoChFDbUsRIlN+gEcYytkrbAmmBb8Ly8FT27F001OPwOPpaJL/0S9UyUO
	bVHZMVS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pGB-0003Bm-Ft; Thu, 05 Mar 2020 12:05:51 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pFs-0002zL-5s
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 12:05:34 +0000
Received: from mysh.local (ip5f5ac5fa.dynamic.kabel-deutschland.de
 [95.90.197.250]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 025C5KKC010074
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Thu, 5 Mar 2020 13:05:21 +0100
To: openwrt-devel@lists.openwrt.org
References: <20200303132844.103585-1-peter.stadler@student.uibk.ac.at>
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <c467d5b4-14eb-ea13-3462-6720c34ef9a7@student.uibk.ac.at>
Date: Thu, 5 Mar 2020 13:05:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200303132844.103585-1-peter.stadler@student.uibk.ac.at>
Content-Language: en-US
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_040532_555485_77476357 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] opkg: check for reverse conflicts on
 install
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

Additionally it would be good to ignore conflicting packages, when 
selecting a provider in `pkg_hash_fetch_best_installation_candidate`.

Please look at the extended patch:

Signed-off-by: Peter Stadler<peter.stadler@student.uibk.ac.at>
---
  libopkg/pkg.h         |  3 ++-
  libopkg/pkg_depends.c | 25 +++++++++++++++++--------
  libopkg/pkg_hash.c    |  5 +++++
  3 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/libopkg/pkg.h b/libopkg/pkg.h
index 600fc9e..7d01549 100644
--- a/libopkg/pkg.h
+++ b/libopkg/pkg.h
@@ -59,6 +59,7 @@ enum pkg_state_flag {
  	SF_FILELIST_CHANGED = 128,	/* needs filelist written */
  	SF_USER = 256,
  	SF_NEED_DETAIL = 512,
+	SF_CONFLICT = 1024,
  	SF_LAST_STATE_FLAG
  };
  typedef enum pkg_state_flag pkg_state_flag_t;
@@ -162,7 +163,7 @@ struct pkg {
  	pkg_src_t *src;
  	pkg_dest_t *dest;
  	pkg_state_want_t state_want:3;
-	pkg_state_flag_t state_flag:11;
+	pkg_state_flag_t state_flag:12;
  	pkg_state_status_t state_status:4;
  
  	abstract_pkg_t *parent;
diff --git a/libopkg/pkg_depends.c b/libopkg/pkg_depends.c
index 3abdcd3..7ad0840 100644
--- a/libopkg/pkg_depends.c
+++ b/libopkg/pkg_depends.c
@@ -292,6 +292,8 @@ static int is_pkg_a_replaces(pkg_t * pkg_scout, pkg_t * pkg)
  
  pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
  {
+	pkg_vec_t * installed_pkgs;
+	pkg_t *installed_pkg;
  	pkg_vec_t *installed_conflicts, *test_vec;
  	compound_depend_t *conflicts, *conflict;
  	depend_t **possible_satisfiers;
@@ -312,17 +314,14 @@ pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
  	}
  
  	conflicts = pkg_get_ptr(pkg, PKG_CONFLICTS);
-	if (!conflicts) {
-		return (pkg_vec_t *) NULL;
-	}
  	installed_conflicts = pkg_vec_alloc();
  
  	/* foreach conflict */
-	for (conflict = conflicts; conflict->type; conflict++ ) {
-		possible_satisfiers = conflicts->possibilities;
+	for (conflict = conflicts; conflict && conflict->type; conflict++ ) {
+		possible_satisfiers = conflict->possibilities;
  
  		/* foreach possible satisfier */
-		for (j = 0; j < conflicts->possibility_count; j++) {
+		for (j = 0; j < conflict->possibility_count; j++) {
  			possible_satisfier = possible_satisfiers[j];
  			if (!possible_satisfier)
  				opkg_msg(ERROR,
@@ -355,9 +354,19 @@ pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
  				}
  			}
  		}
-		conflicts++;
  	}
  
+	/* reverse conflicts */
+	installed_pkgs = pkg_vec_alloc();
+	pkg_hash_fetch_all_installed(installed_pkgs);
+	for (j = 0; j < installed_pkgs->len; j++) {
+		installed_pkg = installed_pkgs->pkgs[j];
+		if (pkg_conflicts(installed_pkg, pkg)) {
+			pkg_vec_insert(installed_conflicts, installed_pkg);
+		}
+	}
+	pkg_vec_free(installed_pkgs);
+
  	if (installed_conflicts->len)
  		return installed_conflicts;
  	pkg_vec_free(installed_conflicts);
@@ -558,7 +567,7 @@ static void flag_related_packages(pkg_t *pkg, int state_flags)
  			if ((deps[i].possibilities[j]->pkg->state_flag & state_flags) != state_flags) {
  				opkg_msg(DEBUG, "propagating pkg flag to conflicting abpkg %s\n",
  				         deps[i].possibilities[j]->pkg->name);
-				deps[i].possibilities[j]->pkg->state_flag |= state_flags;
+				deps[i].possibilities[j]->pkg->state_flag |= state_flags | SF_CONFLICT;
  			}
  		}
  }
diff --git a/libopkg/pkg_hash.c b/libopkg/pkg_hash.c
index 611f3b9..31bad9e 100644
--- a/libopkg/pkg_hash.c
+++ b/libopkg/pkg_hash.c
@@ -312,6 +312,11 @@ pkg_t *pkg_hash_fetch_best_installation_candidate(abstract_pkg_t * apkg,
  	/* accumulate all the providers */
  	for (i = 0; i < nprovides; i++) {
  		abstract_pkg_t *provider_apkg = provided_apkgs[i];
+		if (provider_apkg->state_flag & SF_CONFLICT) {
+			opkg_msg(DEBUG, "Ignore conflicting %s as provider.\n",
+				provider_apkg->name);
+			continue;
+		}
  		opkg_msg(DEBUG, "Adding %s to providers.\n",
  			 provider_apkg->name);
  		abstract_pkg_vec_insert(providers, provider_apkg);
-- 2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
