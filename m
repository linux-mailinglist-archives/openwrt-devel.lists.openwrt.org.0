Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA890455
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 17:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBK4Wyip5WWJT4jc85c3qcn9y2XBT7PTJWSTHhRbqcs=; b=h9QJb1I8OdQ0VJ
	k28aNDMWx3k7ErlvfdpFkWSHzfqTYR35UhBdILnLEIO2zYj8//xadBACuM3VgnHR3ezgEanCnDTm8
	RMUT7aHRG3Bp/Alc1sKjsf8TVHI+NDweea/lxxWFp7hdiRiINntkWi0gBH2uCB/grPVN9+I7SVwVa
	IDm/pO0O31OKS7jF69UgubNNjtef2oO5e3y6JhUx+U2SZbnDV/CEjE4HyLn0G956wH5FbIwUlb6j+
	LX1pF9Rqx/SuJ3HLfKseQesaFVg0uV/znigpsxoflGWCtgMUi+4dOujOCowmpLK+eW1ilNH+MLssC
	UhjhNbFd/2AfrrZ3CUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydnh-00019y-Ti; Fri, 16 Aug 2019 15:05:58 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydnK-0000y3-2G
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 15:05:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so4267510lff.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 08:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2OcALIl3JpXq9R7ikU8sFtu6d9WD4sJsgP4GJkb9FZA=;
 b=QlnR31+7ZJV9p/C47Bo/PPqR9eOcQmMnwFz1l3Yb/XcQd/c0KLV16xPr02P+Uw72aR
 +3nQ3MwOVi/Pqn0uNy0nnNcOJrwEY+Ya1RQ4vfj68WrEt1btyByuG+dyKjHio76oO3Jy
 mngO138hGgV931G+XFeq1+/+D3aa9mh57nAwIQSFRhPpUpLuNKiln9PTVNsReG+CYFYf
 1Mj5Z2w4v5NEs+LJw7jwMJrRM+qCLallXGd6Y4X7D7hkci5CjTBF0uSzYqeWA3huQJxz
 nIjGJHKX+fiQq/Nsmu2GgE2xHCZFsWOL0TEHD2eb2/iyllNlgzOgP45V3PfsR9jjtd6q
 JHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2OcALIl3JpXq9R7ikU8sFtu6d9WD4sJsgP4GJkb9FZA=;
 b=PnXUcwX3Abqugew8G85Jrn8I+NyhArdd4DeOU9W+kQg6cnCuJeL8eYPn3GYDXPNLON
 +Y2+pp7dqh2WnGc0srk86bJmL9aiU2zpkgKPZuOm4DnakG5H76AphWvgswwFDPe450oy
 u4h6roPjnlI/U3Ca/T4kQv2uit4BrTTSGhxhol+nI3kOogljfspWIeaLfP4Jue5emvmj
 /Q0V2YHWvb5C3SnzxeGo5EnjXoLiEHr1tc1knNBzfdS4sMk0kOvd/T0j79juk0uTrlq/
 e5BVVgn/KP22gGuB6x+5x1jmNMqYo7WqXoigbqtC0vaKNSn4+OlqwPBBXGz8fA2FGNtP
 YhVw==
X-Gm-Message-State: APjAAAX6QKaUta9V4cgmXncScoI2pW3mGucdGHnRbccYeDl0RMeHJe4o
 GUhtajUEff8nHJPPLTO+MKdUGmDW
X-Google-Smtp-Source: APXvYqzOHTVrPv1yGwiqQaZHGYvtExA1CILC0W9Oyl4oMHOflolNYIDREewGR9OoDcENPzBn1zKI+Q==
X-Received: by 2002:a19:ca4b:: with SMTP id h11mr5202956lfj.162.1565967931023; 
 Fri, 16 Aug 2019 08:05:31 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w21sm961810lfl.84.2019.08.16.08.05.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:05:30 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 17:05:17 +0200
Message-Id: <20190816150517.29633-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816150517.29633-1-zajec5@gmail.com>
References: <20190816150517.29633-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_080534_178388_E584AEC2 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] treewide: sysupgrade: pass
 "save_partitions" option to the "sysupgrade" method
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBleHBsaWNpdGx5
IGxldHMgc3RhZ2UyIGtub3cgaWYgcGFydGl0aW9ucyBzaG91bGQgYmUgcHJlc2VydmVkLiBObwpt
b3JlICJ0b3VjaCAvdG1wL3N5c3VwZ3JhZGUuYWx3YXlzLm92ZXJ3cml0ZS5ib290ZGlzay5wYXJ0
bWFwIiBoYWNrLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgotLS0KIHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIgICAg
ICAgICAgICAgIHwgNSAtLS0tLQogcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBn
cmFkZSAgICAgICAgICAgICAgICAgfCA5ICsrLS0tLS0tLQogdGFyZ2V0L2xpbnV4L2FwbTgyMXh4
L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvd2Rib29rLnNoICAgfCAyICstCiB0YXJnZXQvbGludXgv
YnJjbTI3MDgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCB8IDIgKy0KIHRhcmdl
dC9saW51eC9tdmVidS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3NkY2FyZC5zaCAgICAgIHwgMiAr
LQogdGFyZ2V0L2xpbnV4L29tYXAvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCAg
ICAgfCAyICstCiB0YXJnZXQvbGludXgvc3VueGkvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0
Zm9ybS5zaCAgICB8IDIgKy0KIHRhcmdldC9saW51eC90ZWdyYS9iYXNlLWZpbGVzL2xpYi91cGdy
YWRlL3BsYXRmb3JtLnNoICAgIHwgMiArLQogdGFyZ2V0L2xpbnV4L3g4Ni9iYXNlLWZpbGVzL2xp
Yi91cGdyYWRlL3BsYXRmb3JtLnNoICAgICAgfCAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL2xpYi91cGdyYWRlL3N0YWdlMiBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9s
aWIvdXBncmFkZS9zdGFnZTIKaW5kZXggNGU1ODM3YWY4My4uZmYyYTlhZWUwNSAxMDA3NTUKLS0t
IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL3N0YWdlMgorKysgYi9wYWNr
YWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyCkBAIC02LDggKzYsNiBAQAog
ZXhwb3J0IElNQUdFPSIkMSIKIENPTU1BTkQ9IiQyIgogCi1leHBvcnQgU0FWRV9QQVJUSVRJT05T
PTEKLQogZXhwb3J0IElOVEVSQUNUSVZFPTAKIGV4cG9ydCBWRVJCT1NFPTEKIGV4cG9ydCBDT05G
RklMRVM9L3RtcC9zeXN1cGdyYWRlLmNvbmZmaWxlcwpAQCAtMTYsOSArMTQsNiBAQCBleHBvcnQg
Q09ORl9UQVI9L3RtcC9zeXN1cGdyYWRlLnRnegogUkFNRlNfQ09QWV9CSU49CQkjIGV4dHJhIHBy
b2dyYW1zIGZvciB0ZW1wb3JhcnkgcmFtZnMgcm9vdAogUkFNRlNfQ09QWV9EQVRBPQkjIGV4dHJh
IGRhdGEgZmlsZXMKIAotCi1bIC1mIC90bXAvc3lzdXBncmFkZS5hbHdheXMub3ZlcndyaXRlLmJv
b3RkaXNrLnBhcnRtYXAgXSAmJiBleHBvcnQgU0FWRV9QQVJUSVRJT05TPTAKLQogaW5jbHVkZSAv
bGliL3VwZ3JhZGUKIAogCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jp
bi9zeXN1cGdyYWRlIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZQpp
bmRleCAxNTUxNDE1OWIzLi5jMjdjMWZiYzQ3IDEwMDc1NQotLS0gYS9wYWNrYWdlL2Jhc2UtZmls
ZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCisrKyBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9z
YmluL3N5c3VwZ3JhZGUKQEAgLTM1MSwxMiArMzUxLDYgQEAgaWYgWyAkVEVTVCAtZXEgMSBdOyB0
aGVuCiAJZXhpdCAwCiBmaQogCi1pZiBbICRTQVZFX1BBUlRJVElPTlMgLWVxIDAgXTsgdGhlbgot
CXRvdWNoIC90bXAvc3lzdXBncmFkZS5hbHdheXMub3ZlcndyaXRlLmJvb3RkaXNrLnBhcnRtYXAK
LWVsc2UKLQlybSAtZiAvdG1wL3N5c3VwZ3JhZGUuYWx3YXlzLm92ZXJ3cml0ZS5ib290ZGlzay5w
YXJ0bWFwCi1maQotCiBpbnN0YWxsX2JpbiAvc2Jpbi91cGdyYWRlZAogdiAiQ29tbWVuY2luZyB1
cGdyYWRlLiBDbG9zaW5nIGFsbCBzaGVsbCBzZXNzaW9ucy4iCiAKQEAgLTM3MSw3ICszNjUsOCBA
QCBlbHNlCiAJCVwicGF0aFwiOiAkKGpzb25fc3RyaW5nICIkSU1BR0UiKSwKIAkJXCJjb21tYW5k
XCI6ICQoanNvbl9zdHJpbmcgIiRDT01NQU5EIiksCiAJCVwib3B0aW9uc1wiOiB7Ci0JCQlcInNh
dmVfY29uZmlnXCI6ICRTQVZFX0NPTkZJRworCQkJXCJzYXZlX2NvbmZpZ1wiOiAkU0FWRV9DT05G
SUcsCisJCQlcInNhdmVfcGFydGl0aW9uc1wiOiAkU0FWRV9QQVJUSVRJT05TCiAJCX0KIAl9Igog
ZmkKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcG04MjF4eC9iYXNlLWZpbGVzL2xpYi91cGdy
YWRlL3dkYm9vay5zaCBiL3RhcmdldC9saW51eC9hcG04MjF4eC9iYXNlLWZpbGVzL2xpYi91cGdy
YWRlL3dkYm9vay5zaAppbmRleCBjMTkxMjcxMTQ5Li4wMTMyN2Q5MjZhIDEwMDY0NAotLS0gYS90
YXJnZXQvbGludXgvYXBtODIxeHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS93ZGJvb2suc2gKKysr
IGIvdGFyZ2V0L2xpbnV4L2FwbTgyMXh4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvd2Rib29rLnNo
CkBAIC00Myw3ICs0Myw3IEBAIG1ibF9kb191cGdyYWRlKCkgewogCiAJc3luYwogCi0JaWYgWyAi
JFNBVkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgorCWlmIFsgIiRVUEdSQURFX09QVF9TQVZF
X1BBUlRJVElPTlMiID0gIjEiIF07IHRoZW4KIAkJZ2V0X3BhcnRpdGlvbnMgIi9kZXYvJGRpc2tk
ZXYiIGJvb3RkaXNrCiAKIAkJI2V4dHJhY3QgdGhlIGJvb3Qgc2VjdG9yIGZyb20gdGhlIGltYWdl
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYnJjbTI3MDgvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC9icmNtMjcwOC9iYXNlLWZpbGVzL2xpYi91cGdy
YWRlL3BsYXRmb3JtLnNoCmluZGV4IDM3ZTQ3OTI3MmIuLjY5M2NkZTc3NzkgMTAwNjQ0Ci0tLSBh
L3RhcmdldC9saW51eC9icmNtMjcwOC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNo
CisrKyBiL3RhcmdldC9saW51eC9icmNtMjcwOC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRm
b3JtLnNoCkBAIC00NSw3ICs0NSw3IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAKIAlzeW5j
CiAKLQlpZiBbICIkU0FWRV9QQVJUSVRJT05TIiA9ICIxIiBdOyB0aGVuCisJaWYgWyAiJFVQR1JB
REVfT1BUX1NBVkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgogCQlnZXRfcGFydGl0aW9ucyAi
L2Rldi8kZGlza2RldiIgYm9vdGRpc2sKIAogCQkjZXh0cmFjdCB0aGUgYm9vdCBzZWN0b3IgZnJv
bSB0aGUgaW1hZ2UKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9iYXNlLWZpbGVzL2xp
Yi91cGdyYWRlL3NkY2FyZC5zaCBiL3RhcmdldC9saW51eC9tdmVidS9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3NkY2FyZC5zaAppbmRleCA0M2ZjMjUwNGZjLi4wOGFiMTcwODlkIDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvbXZlYnUvYmFzZS1maWxlcy9saWIvdXBncmFkZS9zZGNhcmQuc2gKKysr
IGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvc2RjYXJkLnNoCkBA
IC00OSw3ICs0OSw3IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGVfc2RjYXJkKCkgewogCiAJc3luYwog
Ci0JaWYgWyAiJFNBVkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgorCWlmIFsgIiRVUEdSQURF
X09QVF9TQVZFX1BBUlRJVElPTlMiID0gIjEiIF07IHRoZW4KIAkJZ2V0X3BhcnRpdGlvbnMgIi9k
ZXYvJGRpc2tkZXYiIGJvb3RkaXNrCiAKIAkJI2V4dHJhY3QgdGhlIGJvb3Qgc2VjdG9yIGZyb20g
dGhlIGltYWdlCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvb21hcC9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L29tYXAvYmFzZS1maWxlcy9saWIvdXBn
cmFkZS9wbGF0Zm9ybS5zaAppbmRleCBhYmU5MTBiMTU0Li5jOGIwMTc1ZmQ1IDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvb21hcC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCisr
KyBiL3RhcmdldC9saW51eC9vbWFwL2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gK
QEAgLTQ1LDcgKzQ1LDcgQEAgcGxhdGZvcm1fZG9fdXBncmFkZSgpIHsKIAogCXN5bmMKIAotCWlm
IFsgIiRTQVZFX1BBUlRJVElPTlMiID0gIjEiIF07IHRoZW4KKwlpZiBbICIkVVBHUkFERV9PUFRf
U0FWRV9QQVJUSVRJT05TIiA9ICIxIiBdOyB0aGVuCiAJCWdldF9wYXJ0aXRpb25zICIvZGV2LyRk
aXNrZGV2IiBib290ZGlzawogCiAJCSNleHRyYWN0IHRoZSBib290IHNlY3RvciBmcm9tIHRoZSBp
bWFnZQpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3N1bnhpL2Jhc2UtZmlsZXMvbGliL3VwZ3Jh
ZGUvcGxhdGZvcm0uc2ggYi90YXJnZXQvbGludXgvc3VueGkvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaAppbmRleCBhYmU5MTBiMTU0Li5jOGIwMTc1ZmQ1IDEwMDY0NAotLS0gYS90
YXJnZXQvbGludXgvc3VueGkvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaAorKysg
Yi90YXJnZXQvbGludXgvc3VueGkvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaApA
QCAtNDUsNyArNDUsNyBAQCBwbGF0Zm9ybV9kb191cGdyYWRlKCkgewogCiAJc3luYwogCi0JaWYg
WyAiJFNBVkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgorCWlmIFsgIiRVUEdSQURFX09QVF9T
QVZFX1BBUlRJVElPTlMiID0gIjEiIF07IHRoZW4KIAkJZ2V0X3BhcnRpdGlvbnMgIi9kZXYvJGRp
c2tkZXYiIGJvb3RkaXNrCiAKIAkJI2V4dHJhY3QgdGhlIGJvb3Qgc2VjdG9yIGZyb20gdGhlIGlt
YWdlCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvdGVncmEvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC90ZWdyYS9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoCmluZGV4IDk3ZGQzODEwNDEuLjY2ZTdkOTFlM2MgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC90ZWdyYS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCisrKyBi
L3RhcmdldC9saW51eC90ZWdyYS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCkBA
IC02Miw3ICs2Miw3IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAKIAlzeW5jCiAKLQlpZiBb
ICIkU0FWRV9QQVJUSVRJT05TIiA9ICIxIiBdOyB0aGVuCisJaWYgWyAiJFVQR1JBREVfT1BUX1NB
VkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgogCQlnZXRfcGFydGl0aW9ucyAiL2Rldi8kZGlz
a2RldiIgYm9vdGRpc2sKIAogCQkjZXh0cmFjdCB0aGUgYm9vdCBzZWN0b3IgZnJvbSB0aGUgaW1h
Z2UKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC94ODYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9w
bGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC94ODYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0
Zm9ybS5zaAppbmRleCA0MzliYThmNTEyLi4xNjJkYmFmM2FhIDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgveDg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysrIGIvdGFyZ2V0
L2xpbnV4L3g4Ni9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCkBAIC01NCw3ICs1
NCw3IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAKIAlzeW5jCiAKLQlpZiBbICIkU0FWRV9Q
QVJUSVRJT05TIiA9ICIxIiBdOyB0aGVuCisJaWYgWyAiJFVQR1JBREVfT1BUX1NBVkVfUEFSVElU
SU9OUyIgPSAiMSIgXTsgdGhlbgogCQlnZXRfcGFydGl0aW9ucyAiL2Rldi8kZGlza2RldiIgYm9v
dGRpc2sKIAogCQkjZXh0cmFjdCB0aGUgYm9vdCBzZWN0b3IgZnJvbSB0aGUgaW1hZ2UKLS0gCjIu
MjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
