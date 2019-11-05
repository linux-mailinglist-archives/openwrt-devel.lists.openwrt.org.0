Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C140EF216
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X63FB8jErS+73+Hd8H3SrkmYxRrPV9/0w0nU2671VIY=; b=UteAOQPw8ONBhl
	Bh8n57oksGHQ8hlg70l/EmZ+/BPNi8SEelUd0O51F93nJXppZ4KY5kmYcjqRX56b/yMw04iFZw8US
	fE4AIp/xxoIFRI7oJtc/RU7ZihxsK31EiIhOF2yELhMrOye9WxzvEajMtdAQkVN+sNO+qtRmJug7x
	SD3OXGE+B0vnOx03i/1mX/QTKLubBxBBeDfXPT5wfSPzgxl6wwd6ztSgYJ3j/fchRGdtDKiPuXDmv
	pNSaEbL1Ynfo9p7M7p8yk3ueG9tPSM5aPrrYNSu0W4xRTWL9YtAVnBFZQdCIo6t8YN/2i89x28qUx
	8a6LjSpjjrunsUiNm8sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmrx-0001Qq-64; Tue, 05 Nov 2019 00:38:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqO-00086H-BN
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3E9734D82;
 Tue,  5 Nov 2019 01:37:10 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 49b6ba56;
 Tue, 5 Nov 2019 01:37:00 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:45 +0100
Message-Id: <20191105003657.16540-7-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163712_551305_9E857FE5 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH uci 06/18] cmake: build Lua module only if
 enabled
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TWFrZXMgdGhlIHJlc3VsdGluZyBsdWEvQ01ha2VMaXN0cy50eHQgZmlsZSBzaW1wbGVyLgoKU2ln
bmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBDTWFrZUxpc3Rz
LnR4dCAgICAgfCAgNCArKystCiBsdWEvQ01ha2VMaXN0cy50eHQgfCAzMiArKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAy
MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9DTWFrZUxpc3RzLnR4dCBiL0NNYWtlTGlzdHMu
dHh0CmluZGV4IDI1NTliMWVjMTUwNy4uMGJiZDNiMjA0NmVjIDEwMDY0NAotLS0gYS9DTWFrZUxp
c3RzLnR4dAorKysgYi9DTWFrZUxpc3RzLnR4dApAQCAtNDEsNyArNDEsOSBAQCBFTkRJRihCVUlM
RF9TVEFUSUMpCiAKIEFERF9MSUJSQVJZKHVjaW1hcCBTVEFUSUMgdWNpbWFwLmMpCiAKLUFERF9T
VUJESVJFQ1RPUlkobHVhKQorSUYoQlVJTERfTFVBKQorICBBRERfU1VCRElSRUNUT1JZKGx1YSkK
K0VORElGKCkKIAogSUYoVU5JVF9URVNUSU5HKQogICBFTkFCTEVfVEVTVElORygpCmRpZmYgLS1n
aXQgYS9sdWEvQ01ha2VMaXN0cy50eHQgYi9sdWEvQ01ha2VMaXN0cy50eHQKaW5kZXggYjlmNTEz
YTljMDQ0Li45NmIxMjJhYTUwMjkgMTAwNjQ0Ci0tLSBhL2x1YS9DTWFrZUxpc3RzLnR4dAorKysg
Yi9sdWEvQ01ha2VMaXN0cy50eHQKQEAgLTE1LDEyICsxNSw5IEBAIExJTktfRElSRUNUT1JJRVMo
JHtDTUFLRV9DVVJSRU5UX1NPVVJDRV9ESVJ9Ly4uKQogSUYoQVBQTEUpCiAgIElOQ0xVREVfRElS
RUNUT1JJRVMoL29wdC9sb2NhbC9pbmNsdWRlKQogICBMSU5LX0RJUkVDVE9SSUVTKC9vcHQvbG9j
YWwvbGliKQorICBTRVQoQ01BS0VfU0hBUkVEX01PRFVMRV9DUkVBVEVfQ19GTEFHUyAiJHtDTUFL
RV9TSEFSRURfTU9EVUxFX0NSRUFURV9DX0ZMQUdTfSAtdW5kZWZpbmVkIGR5bmFtaWNfbG9va3Vw
IikKIEVORElGKCkKIAotSUYoQVBQTEUpCi0JU0VUKENNQUtFX1NIQVJFRF9NT0RVTEVfQ1JFQVRF
X0NfRkxBR1MgIiR7Q01BS0VfU0hBUkVEX01PRFVMRV9DUkVBVEVfQ19GTEFHU30gLXVuZGVmaW5l
ZCBkeW5hbWljX2xvb2t1cCIpCi1FTkRJRihBUFBMRSkKLQogSUYoTk9UIExVQVBBVEgpCiAJRVhF
Q1VURV9QUk9DRVNTKAogCQlDT01NQU5EICBsdWEgLWUgImZvciBrIGluIHN0cmluZy5nbWF0Y2go
cGFja2FnZS5jcGF0aCAuLiBcIjtcIiwgXCIoW147XSspLy4uc287XCIpIGRvIGlmIGs6c3ViKDEs
MSkgPT0gXCIvXCIgdGhlbiBwcmludChrKSBicmVhayBlbmQgZW5kIgpAQCAtMjksMjMgKzI2LDE4
IEBAIElGKE5PVCBMVUFQQVRIKQogCQlPVVRQVVRfU1RSSVBfVFJBSUxJTkdfV0hJVEVTUEFDRQog
CSkKIAotCUlGKEJVSUxEX0xVQSkKLQkJSUYoTk9UICR7TFVBX0NIRUNLX1JFU30gRVFVQUwgMCBP
UiAiJHtMVUFQQVRIfSIgRVFVQUwgIiIpCi0JCQlNRVNTQUdFKFNFTkRfRVJST1IgIkx1YSB3YXMg
bm90IGZvdW5kIG9uIHlvdXIgc3lzdGVtIikKLQkJRU5ESUYoKQorCUlGKE5PVCAke0xVQV9DSEVD
S19SRVN9IEVRVUFMIDAgT1IgIiR7TFVBUEFUSH0iIEVRVUFMICIiKQorCQlNRVNTQUdFKFNFTkRf
RVJST1IgIkx1YSB3YXMgbm90IGZvdW5kIG9uIHlvdXIgc3lzdGVtIikKIAlFTkRJRigpCiBFTkRJ
RigpCiAKLUlGKEJVSUxEX0xVQSkKLQlBRERfTElCUkFSWSh1Y2lfbHVhIE1PRFVMRSB1Y2kuYykK
LQlTRVRfVEFSR0VUX1BST1BFUlRJRVModWNpX2x1YSBQUk9QRVJUSUVTCi0JCU9VVFBVVF9OQU1F
IHVjaQotCQlQUkVGSVggIiIKLQkpCi0JVEFSR0VUX0xJTktfTElCUkFSSUVTKHVjaV9sdWEgdWNp
IGRsKQotCi0JSU5TVEFMTChUQVJHRVRTIHVjaV9sdWEKLQkJTElCUkFSWSBERVNUSU5BVElPTiAk
e0xVQVBBVEh9Ci0JKQotRU5ESUYoKQorQUREX0xJQlJBUlkodWNpX2x1YSBNT0RVTEUgdWNpLmMp
CitTRVRfVEFSR0VUX1BST1BFUlRJRVModWNpX2x1YSBQUk9QRVJUSUVTCisJT1VUUFVUX05BTUUg
dWNpCisJUFJFRklYICIiCispCitUQVJHRVRfTElOS19MSUJSQVJJRVModWNpX2x1YSB1Y2kgZGwp
CiAKK0lOU1RBTEwoVEFSR0VUUyB1Y2lfbHVhCisJTElCUkFSWSBERVNUSU5BVElPTiAke0xVQVBB
VEh9CispCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
