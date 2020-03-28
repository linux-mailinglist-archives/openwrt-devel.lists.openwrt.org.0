Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A991966B9
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTr4zD2Ox/qOkGsnaL/R01M0L8uhau8todIvkrd3IUk=; b=EvixvSiEMcIlhA
	nffuRAjvew5rt7sWdNgc2+f+dph/PmpdunktKJVJmF2Bx2liR8CzSlFm53YM2zI5wrMWpvhP9TBqk
	ZVYvaIGeNh7RutS8QkpJCVTolDqQZeqk28GGRx/sE/arbqaHwKFUsA5VFQputaYW5ckkc2dtDHQVt
	Vk6Np8CfOWodFSMif/9CCJtwMOUQbesvsvMY2wfmHsmmEf8R/08CypnCTiqfMSuCoFCMvCHkoTC+n
	1YAnD6oGQGtU6IkutsTB5HmtFwwtoNrgS20EF0ecX0l8gUAg50Gkq6YeltGvBC4geTbc02stwapwE
	6DOaXwjABrWsIn1+8Trg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICMj-00022G-QT; Sat, 28 Mar 2020 14:23:13 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICL6-0008FN-Vh
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:34 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 54886606F2;
 Sat, 28 Mar 2020 15:21:29 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 54886606F2
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 54886606F2
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:28 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:32 +0100
Message-Id: <20200328142032.37734-12-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072133_186382_9449CA7E 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
Subject: [OpenWrt-Devel] [PATCH 11/11] ramips: MikroTik RBM33G routerboot
 partitions
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rpa19yYm0zM2cuZHRzIHwgMTIg
KysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rp
a19yYm0zM2cuZHRzIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3Ji
bTMzZy5kdHMKaW5kZXggMjUwMGFlMjlkYS4uOTg5NWJiNzBkNSAxMDA2NDQKLS0tIGEvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JibTMzZy5kdHMKKysrIGIvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JibTMzZy5kdHMKQEAgLTEwNCwxOSAr
MTA0LDE3IEBACiAJCQkJbGFiZWwgPSAiUm91dGVyQm9vdCI7CiAJCQkJcmVnID0gPDB4MCAweDQw
MDAwPjsKIAkJCQlyZWFkLW9ubHk7Ci0JCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25z
IjsKKwkJCQljb21wYXRpYmxlID0gIm1pa3JvdGlrLHJvdXRlcmJvb3QtcGFydGl0aW9ucyI7CiAJ
CQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCQkJI3NpemUtY2VsbHMgPSA8MT47CiAKIAkJCQlw
YXJ0aXRpb25AMCB7CiAJCQkJCWxhYmVsID0gImJvb3Rsb2FkZXIxIjsKLQkJCQkJcmVnID0gPDB4
MCAweGYwMDA+OworCQkJCQlyZWcgPSA8MHgwIDB4MD47CiAJCQkJCXJlYWQtb25seTsKIAkJCQl9
OwogCi0JCQkJaGFyZF9jb25maWc6IHBhcnRpdGlvbkBmMDAwIHsKLQkJCQkJbGFiZWwgPSAiaGFy
ZF9jb25maWciOwotCQkJCQlyZWcgPSA8MHhmMDAwIDB4MTAwMD47CisJCQkJaGFyZF9jb25maWc6
IGhhcmRfY29uZmlnIHsKIAkJCQkJcmVhZC1vbmx5OwogCQkJCX07CiAKQEAgLTEyNiw5ICsxMjQs
NyBAQAogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsKIAotCQkJCXBhcnRpdGlvbkAyMDAwMCB7Ci0J
CQkJCWxhYmVsID0gInNvZnRfY29uZmlnIjsKLQkJCQkJcmVnID0gPDB4MjAwMDAgMHgxMDAwPjsK
KwkJCQlzb2Z0X2NvbmZpZyB7CiAJCQkJfTsKIAogCQkJCXBhcnRpdGlvbkAzMDAwMCB7Ci0tIAoy
LjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
