Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089C09A771
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 08:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QbGnQyLg5kvHxVqMnfWiO5tER1eM+uGkv7lNBwKIU/w=; b=Mh9T3/jNMeDtvq
	MujCTxxcB4roqsVyrwsLeeV3qEZOydbKyO6JCFTiHheaNhwfVPYayUFNWsPU5tHEoxnm1Kx3njJIj
	pIJjzhKqrMUoaZhjt3xDbg4gYeJDCoKU6q5RZ/tWYJUTTtlaZPvUiMXa6dx4kUuIwnQ40OfEUSxa/
	IoPw+1FVwV6USoyakBBqCrybc2CpjmWT0pxEv7ExifesLS9SneJynkd9WhZW/4+YysztEq6o7V+Jt
	uIwvifq/fNxCZO3Jqz5wp5aB+c1WYlMDHrQHu6fgZ7c9vHiI6BE4qMgJqK0xpTWoByVgjTXKZk7Ul
	2k2EkAa6UblsxX8+Z2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i12re-0006y9-9A; Fri, 23 Aug 2019 06:15:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i12rL-0006xV-At
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 06:15:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id n19so6256508lfe.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 23:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2k8Q/ssmjFEDavNeP2YbPu/DbOUxq2NQ96pLZZpBlA4=;
 b=DNPFaThAdrN5YACUgRYko7ajTSLtZdnYVB81ac7DOvZRZyMQjzMfmVRPK0PXLOiH60
 beMArWFPmqOJUP0idGmlJendzgHu/p8hzE2cF4tDAIRJ6RmlrYS/KMLP2PYtPrrhheLm
 sCd5dAYE+j4V067ZmThRzX/qxjVSmkFIAstRDJvqNcOG6+6e7kebyRLe+/N9e9OXjc9J
 zc23O1c+/1dtwJ4IrxFWRLkmP1+gXTpT0EY/30yA/HvPAR3cpqfERhxIVrjfdsz5BaJu
 pBjp7zxFGeN3fM+wMQp6c4u06/XzIKwT85MpjDbPRQmiUt7bS8bIMFp6E5j+uX7zXj5/
 8o9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2k8Q/ssmjFEDavNeP2YbPu/DbOUxq2NQ96pLZZpBlA4=;
 b=Abvwhjv9aabRXaz6fiwlKumvG/4H443dfhenzlH4iY98c5l3FXB+LxGbiI3Uo0NzAs
 ML1T/yZAv+EH8Y2nlKzf7Z7Q47Bh5Mcdr5FBOuxXx42URzSse+FwJYo2tmmQp0BNQpcD
 gPb18yplKd4EM6UGxgzJUGDqezXCtgRa4Klu27x/8IRaOHBE094x2sOU+SOQPT1J8wE6
 EP9RarfBhp4UjKtMvWg4h/Mpsctsee4rZ/Sb5XD6ONufTF3w79av0sNWyAepUZ3VCnSJ
 AGECHchFSHrZHZsmSUG2RhrCaa5uUja6VvZH2PeC2GloSdyI0cgr2/0OAHo3LW0dl3p7
 1ryg==
X-Gm-Message-State: APjAAAW2REL7Y65avmSRAyaUDyr4xQ2htLsnvMEbhhD+mDMox3/5N7lS
 XTMgHvXpGXevBNOprCP1CC9A1cOK
X-Google-Smtp-Source: APXvYqxn0Gc81R82Byq/HOe+6D271nD+8DSTutTW9N0pgIEg/R5PGEGpj7u76Xkq/rYyl/UMehC5vw==
X-Received: by 2002:a19:ee04:: with SMTP id g4mr1617657lfb.7.1566540936753;
 Thu, 22 Aug 2019 23:15:36 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f17sm425212lfa.67.2019.08.22.23.15.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 23:15:35 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 08:15:23 +0200
Message-Id: <20190823061524.28883-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_231539_378334_F439ED4B 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: use JSON for storing
 firmware validation info
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU28gZmFyIGZpcm13YXJl
IHZhbGlkYXRpb24gcmVzdWx0IHdhcyBiaW5hcnkgbGltaXRlZDogaXQgd2FzIGVpdGhlcgpzdWNj
ZXNzZnVsIG9yIG5vdC4gVGhhdCBtZWFudCB2YXJpb3VzIGxpbWl0YXRpb25zLCBlLmcuOgoxKSBM
YWNrIG9mIHByb3BlciBmZWVkYmFjayBvbiB2YWxpZGF0aW9uIHByb2JsZW1zCjIpIE5vIHdheSBv
ZiBtYXJraW5nIGZpcm13YXJlIGFzIHRvdGFsbHkgYnJva2VuIChpbXBvc3NpYmxlIHRvIGluc3Rh
bGwpCgpUaGlzIGNoYW5nZSBpbnRyb2R1Y2VzIEpTT04gZm9yIHN0b3JpbmcgZGV0YWlsZWQgdmFs
aWRhdGlvbiBpbmZvLiBJdApwcm92aWRlcyBhIGxpc3Qgb2YgcGVyZm9ybWVkIHZhbGlkYXRpb24g
dGVzdHMgYW5kIHRoZWlyIHJlc3VsdHMuIEl0CmFsbG93cyBtYXJraW5nIGZpcm13YXJlIGFzIG5v
bi1mb3JjZWFibGUgKGJyb2tlbiBpbWFnZSB0aGF0IGNhbid0IGJlCmV2ZW4gZm9yY2VkIHRvIGlu
c3RhbGwpLgpFeGFtcGxlOgp7CiAgICAgICAgInRlc3RzIjogewogICAgICAgICAgICAgICAgImZ3
dG9vbF9zaWduYXR1cmUiOiB0cnVlLAogICAgICAgICAgICAgICAgImZ3dG9vbF9kZXZpY2VfbWF0
Y2giOiB0cnVlCiAgICAgICAgfSwKICAgICAgICAidmFsaWQiOiB0cnVlLAogICAgICAgICJmb3Jj
ZWFibGUiOiB0cnVlCn0KCkltcGxlbWVudGF0aW9uIGlzIGJhc2VkIG9uICppbnRlcm5hbCogY2hl
Y2tfaW1hZ2UgYmFzaCBzY3JpcHQgdGhhdDoKMSkgVXNlcyBleGlzdGluZyB2YWxpZGF0aW9uIGZ1
bmN0aW9ucwoyKSBQcm92aWRlcyBoZWxwZXJzIGZvciBzZXR0aW5nIGV4dHJhIHZhbGlkYXRpb24g
aW5mbwoKVGhpcyBhbGxvd3MgZS5nLiBwbGF0Zm9ybV9jaGVja19pbWFnZSgpIHRvIGNhbGwgbm90
aWZ5X2NoZWNrX2Jyb2tlbigpCndoZW4gbmVlZGVkICYgcHJldmVudCB1c2VyIGZyb20gYnJpY2tp
bmcgYSBkZXZpY2UuCgpSaWdodCBub3cgdGhlIG5ldyBKU09OIGluZm8gaXMgdXNlZCBieSAvc2Jp
bi9zeXN1cGdyYWRlIG9ubHkuIEl0J3MKYWxyZWFkeSBhIG5pY2UgZ2FpbiBhcyBpdCBzdG9wcyB1
c2VycyBmcm9tIGluc3RhbGxpbmcgYnJva2VuIGltYWdlcy4KCkZ1cnRoZXIgcGxhbnMgZm9yIHRo
aXMgZmVhdHVyZSBhcmU6CjEpIEV4cG9zZSBmaXJtd2FyZSB2YWxpZGF0aW9uIHVzaW5nIHNvbWUg
bmV3IHVidXMgbWV0aG9kCjIpIE1vdmUgdmFsaWRhdGlvbiBzdGVwIGZyb20gL3NiaW4vc3lzdXBn
cmFkZSBpbnRvICJzeXN1cGdyYWRlIiB1YnVzCiAgIG1ldGhvZCBzbzoKICAgYSkgSXQncyBwb3Nz
aWJsZSB0byBzYWZlbHkgc3lzdXBncmFkZSB1c2luZyB1YnVzIG9ubHkKICAgYikgL3NiaW4vc3lz
dXBncmFkZSBjYW4gYmUgbW9yZSBsaWtlIGp1c3QgYSBDTEkKClNpZ25lZC1vZmYtYnk6IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmls
ZXMvc2Jpbi9zeXN1cGdyYWRlICAgICAgfCAyNCArKysrKy0tLQogLi4uL2Jhc2UtZmlsZXMvZmls
ZXMvdXNyL2xpYmV4ZWMvY2hlY2tfaW1hZ2UgIHwgNTkgKysrKysrKysrKysrKysrKysrKwogMiBm
aWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQogY3JlYXRlIG1v
ZGUgMTAwNzU1IHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy91c3IvbGliZXhlYy9jaGVja19pbWFn
ZQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUg
Yi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCmluZGV4IGMyN2MxZmJj
NDcuLjkwMzQ0OWQzZTUgMTAwNzU1Ci0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmlu
L3N5c3VwZ3JhZGUKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFk
ZQpAQCAtMiw2ICsyLDcgQEAKIAogLiAvbGliL2Z1bmN0aW9ucy5zaAogLiAvbGliL2Z1bmN0aW9u
cy9zeXN0ZW0uc2gKKy4gL3Vzci9zaGFyZS9saWJ1Ym94L2pzaG4uc2gKIAogIyBpbml0aWFsaXpl
IGRlZmF1bHRzCiBleHBvcnQgTVREX0FSR1M9IiIKQEAgLTE5MSw5ICsxOTIsNiBAQCBhZGRfb3Zl
cmxheWZpbGVzKCkgewogCXJldHVybiAwCiB9CiAKLSMgaG9va3MKLXN5c3VwZ3JhZGVfaW1hZ2Vf
Y2hlY2s9ImZ3dG9vbF9jaGVja19zaWduYXR1cmUgZnd0b29sX2NoZWNrX2ltYWdlIHBsYXRmb3Jt
X2NoZWNrX2ltYWdlIgotCiBpZiBbICRTQVZFX09WRVJMQVkgPSAxIF07IHRoZW4KIAlbICEgLWQg
L292ZXJsYXkvdXBwZXIvZXRjIF0gJiYgewogCQllY2hvICJDYW5ub3QgZmluZCAnL292ZXJsYXkv
dXBwZXIvZXRjJywgcmVxdWlyZWQgZm9yICctYyciID4mMgpAQCAtMzE2LDE3ICszMTQsMjUgQEAg
Y2FzZSAiJElNQUdFIiBpbgogCQk7OwogZXNhYwogCi1mb3IgY2hlY2sgaW4gJHN5c3VwZ3JhZGVf
aW1hZ2VfY2hlY2s7IGRvCi0JKCAkY2hlY2sgIiRJTUFHRSIgKSB8fCB7Citqc29uX2xvYWQgIiQo
L3Vzci9saWJleGVjL2NoZWNrX2ltYWdlICIkSU1BR0UiKSIgfHwgeworCWVjaG8gIkZhaWxlZCB0
byBjaGVjayBpbWFnZSIKKwlleGl0IDEKK30KK2pzb25fZ2V0X3ZhciB2YWxpZCAidmFsaWQiCitq
c29uX2dldF92YXIgZm9yY2VhYmxlICJmb3JjZWFibGUiCitbICIkdmFsaWQiIC1lcSAwIF0gJiYg
eworCVsgIiRmb3JjZWFibGUiIC1lcSAxIF0gJiYgewogCQlpZiBbICRGT1JDRSAtZXEgMSBdOyB0
aGVuCi0JCQllY2hvICJJbWFnZSBjaGVjayAnJGNoZWNrJyBmYWlsZWQgYnV0IC0tZm9yY2UgZ2l2
ZW4gLSB3aWxsIHVwZGF0ZSBhbnl3YXkhIiA+JjIKLQkJCWJyZWFrCisJCQllY2hvICJJbWFnZSBj
aGVjayBmYWlsZWQgYnV0IC0tZm9yY2UgZ2l2ZW4gLSB3aWxsIHVwZGF0ZSBhbnl3YXkhIiA+JjIK
IAkJZWxzZQotCQkJZWNobyAiSW1hZ2UgY2hlY2sgJyRjaGVjaycgZmFpbGVkLiIgPiYyCisJCQll
Y2hvICJJbWFnZSBjaGVjayBmYWlsZWQuIFVzZSAtLWZvcmNlIGlmIG5lZWRlZC4iID4mMgogCQkJ
ZXhpdCAxCiAJCWZpCisJfSB8fCB7CisJCWVjaG8gIkltYWdlIGNoZWNrIGZhaWxlZC4gVGhpcyBm
aXJtd2FyZSBjYW4ndCBiZSBpbnN0YWxsZWQuIiA+JjIKKwkJZXhpdCAxCiAJfQotZG9uZQorfQog
CiBpZiBbIC1uICIkQ09ORl9JTUFHRSIgXTsgdGhlbgogCWNhc2UgIiQoZ2V0X21hZ2ljX3dvcmQg
JENPTkZfSU1BR0UgY2F0KSIgaW4KZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxl
cy91c3IvbGliZXhlYy9jaGVja19pbWFnZSBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy91c3Iv
bGliZXhlYy9jaGVja19pbWFnZQpuZXcgZmlsZSBtb2RlIDEwMDc1NQppbmRleCAwMDAwMDAwMDAw
Li5iOWU3NGM2MmIyCi0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L3Vzci9saWJleGVjL2NoZWNrX2ltYWdlCkBAIC0wLDAgKzEsNTkgQEAKKyMhL2Jpbi9zaAorCisu
IC9saWIvZnVuY3Rpb25zLnNoCisuIC9saWIvZnVuY3Rpb25zL3N5c3RlbS5zaAorLiAvdXNyL3No
YXJlL2xpYnVib3gvanNobi5zaAorCitpbmNsdWRlIC9saWIvdXBncmFkZQorCitWQUxJRD0xCitG
T1JDRUFCTEU9MQorCisjIE1hcmsgaW1hZ2UgYXMgaW52YWxpZCBidXQgc3RpbGwgcG9zc2libGUg
dG8gaW5zdGFsbAorbm90aWZ5X2NoZWNrX2ludmFsaWQoKSB7CisJVkFMSUQ9MAorfQorCisjIE1h
cmsgaW1hZ2UgYXMgYnJva2VuIChpbXBvc3NpYmxlIHRvIGluc3RhbGwpCitub3RpZnlfY2hlY2tf
YnJva2VuKCkgeworCVZBTElEPTAKKwlGT1JDRUFCTEU9MAorfQorCisjIEFkZCByZXN1bHQgb2Yg
dmFsaWRhdGlvbiB0ZXN0Citub3RpZnlfY2hlY2tfdGVzdF9yZXN1bHQoKSB7CisJbG9jYWwgb2xk
X25zCisKKwlqc29uX3NldF9uYW1lc3BhY2UgY2hlY2tfaW1hZ2Ugb2xkX25zCisJanNvbl9hZGRf
Ym9vbGVhbiAiJDEiICIkMiIKKwlqc29uX3NldF9uYW1lc3BhY2UgJG9sZF9ucworfQorCitlcnJf
dG9fYm9vbCgpIHsKKwlbICIkMSIgLW5lIDAgXSAmJiBlY2hvIDAgfHwgZWNobyAxCit9CisKK2Z3
dG9vbF9jaGVja19zaWduYXR1cmUgIiQxIiA+JjIKK0ZXVE9PTF9TSUdOQVRVUkU9JD8KK1sgIiRG
V1RPT0xfU0lHTkFUVVJFIiAtbmUgMCBdICYmIG5vdGlmeV9jaGVja19pbnZhbGlkCisKK2Z3dG9v
bF9jaGVja19pbWFnZSAiJDEiID4mMgorRldUT09MX0RFVklDRV9NQVRDSD0kPworWyAiJEZXVE9P
TF9ERVZJQ0VfTUFUQ0giIC1uZSAwIF0gJiYgbm90aWZ5X2NoZWNrX2ludmFsaWQKKworanNvbl9z
ZXRfbmFtZXNwYWNlIGNoZWNrX2ltYWdlIG9sZF9ucworanNvbl9pbml0CisJanNvbl9hZGRfb2Jq
ZWN0ICJ0ZXN0cyIKKwkJanNvbl9hZGRfYm9vbGVhbiBmd3Rvb2xfc2lnbmF0dXJlICIkKGVycl90
b19ib29sICRGV1RPT0xfU0lHTkFUVVJFKSIKKwkJanNvbl9hZGRfYm9vbGVhbiBmd3Rvb2xfZGV2
aWNlX21hdGNoICIkKGVycl90b19ib29sICRGV1RPT0xfREVWSUNFX01BVENIKSIKKworCQkjIENh
bGwgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSBoZXJlIHNvIGl0IGNhbiBhZGQgaXRzIHRlc3QKKwkJ
IyByZXN1bHRzIGFuZCBzdGlsbCBtYXJrIGltYWdlIHByb3Blcmx5LgorCQlqc29uX3NldF9uYW1l
c3BhY2UgJG9sZF9ucworCQlwbGF0Zm9ybV9jaGVja19pbWFnZSAiJDEiID4mMiB8fCBub3RpZnlf
Y2hlY2tfaW52YWxpZAorCQlqc29uX3NldF9uYW1lc3BhY2UgY2hlY2tfaW1hZ2Ugb2xkX25zCisJ
anNvbl9jbG9zZV9vYmplY3QKKwlqc29uX2FkZF9ib29sZWFuIHZhbGlkICIkVkFMSUQiCisJanNv
bl9hZGRfYm9vbGVhbiBmb3JjZWFibGUgIiRGT1JDRUFCTEUiCitqc29uX2R1bXAgLWkKK2pzb25f
c2V0X25hbWVzcGFjZSAkb2xkX25zCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
