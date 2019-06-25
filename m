Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE3154EB1
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nNK6wtiEM0LJuLpmwV27p2MLx5EGOzAvpVJD2JVv5OI=; b=SiHwa78MOdJsCk
	HSemWBSpfgcvCt2YcZSRnIsIsDLQxSZw8ll8aXp87ejlcFuAvL0iA56q5Svu5hZfWWMHLWCUbh1JK
	/AVDR1X0fB+suZWZnGtaO6j/WJSAGTqkXOzY83lu5r65Rhnheazn9iJmTj58UZks2miXaB3Ck+F1D
	s3sEhW71dxyxJafNXK49LoVWyvUmbEiuytFdJg94oxlB4g7Vaj9t6NZ5xfw0nR4wplo5rYK1K4EDW
	3vE+69I9cTi6Oep5MlQvUmnUqIvAA+aeZA2AwT6rmlVqOLbj5NLsRvv1AK00r1UCFO7/cc8xdLhkD
	vCmUkT1EtNj3UQNjXH/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkRs-0006Nv-Ba; Tue, 25 Jun 2019 12:21:20 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkRZ-0006Mr-E4
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 12:21:04 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id x5PCKtJi029299
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 14:20:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1561465255; bh=O1KA7c/stFJFcSL5VQFPd0rJvziIqqueZTpdoWmIJj4=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=blduLxigLLV39vXndTGXUPU9kqR4fH9dZI69bIkyzlWbwoZyHSlTpwfbCJMajN65t
 PxZHlxc6wdczRscccjQk8EtCDyGzuxyaFddZsb6TeNFw9r5B5SruQaDiXBJHmOInRQ
 PuvgvkX61qUVQS7faG2kTwuon79+eWJhDEwqvccI=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id x5PCKtVj029298;
 Tue, 25 Jun 2019 14:20:55 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 14:20:53 +0200
Message-Id: <20190625122053.29256-1-bjorn@mork.no>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_052101_829509_C28920F1 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] base-files: use OPENWRT prefix for
 os-release variables
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
Cc: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+Ci0tLQpKdXN0IHN0dW1i
bGVkIGFjcm9zcyB0aGlzIExFREUgbGVnYWN5LCB3aXRob3V0IGZpbmRpbmcgYW55IHJlYWwgcmVh
c29uCnRvIGtlZXAgaXQuICBUaGVyZSBpcyBhIHNpbmdsZSBMRURFX0RFVklDRV9NQU5VRkFDVFVS
RVJfVVJMIGRlcGVuZGVuY3kKaW4gdGhlIGx1Y2kgZmVlZCByZXBvIHdoaWNoIG5lZWRzIHRvIGJl
IHN5bmNyb25pemVkLiAgQnV0IHRoYXQgZG9lc24ndApzZWVtIGxpa2UgYSBzaG93IHN0b3BwZXIu
CgpNYXliZSBldmVuIGZpeCB0aGlzIGZvciB0aGUgMTkuMDcgcmVsZWFzZT8KCgoKIHBhY2thZ2Uv
YmFzZS1maWxlcy9maWxlcy91c3IvbGliL29zLXJlbGVhc2UgfCAxNiArKysrKysrKy0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy91c3IvbGliL29zLXJlbGVhc2UgYi9wYWNr
YWdlL2Jhc2UtZmlsZXMvZmlsZXMvdXNyL2xpYi9vcy1yZWxlYXNlCmluZGV4IDEyMTA0MTI1NmEz
Yi4uYzM5OTEzZDU0ZmQzIDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvdXNy
L2xpYi9vcy1yZWxlYXNlCisrKyBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy91c3IvbGliL29z
LXJlbGVhc2UKQEAgLTgsMTEgKzgsMTEgQEAgSE9NRV9VUkw9IiV1IgogQlVHX1VSTD0iJWIiCiBT
VVBQT1JUX1VSTD0iJXMiCiBCVUlMRF9JRD0iJVIiCi1MRURFX0JPQVJEPSIlUyIKLUxFREVfQVJD
SD0iJUEiCi1MRURFX1RBSU5UUz0iJXQiCi1MRURFX0RFVklDRV9NQU5VRkFDVFVSRVI9IiVNIgot
TEVERV9ERVZJQ0VfTUFOVUZBQ1RVUkVSX1VSTD0iJW0iCi1MRURFX0RFVklDRV9QUk9EVUNUPSIl
UCIKLUxFREVfREVWSUNFX1JFVklTSU9OPSIlaCIKLUxFREVfUkVMRUFTRT0iJUQgJVYgJUMiCitP
UEVOV1JUX0JPQVJEPSIlUyIKK09QRU5XUlRfQVJDSD0iJUEiCitPUEVOV1JUX1RBSU5UUz0iJXQi
CitPUEVOV1JUX0RFVklDRV9NQU5VRkFDVFVSRVI9IiVNIgorT1BFTldSVF9ERVZJQ0VfTUFOVUZB
Q1RVUkVSX1VSTD0iJW0iCitPUEVOV1JUX0RFVklDRV9QUk9EVUNUPSIlUCIKK09QRU5XUlRfREVW
SUNFX1JFVklTSU9OPSIlaCIKK09QRU5XUlRfUkVMRUFTRT0iJUQgJVYgJUMiCi0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
