Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFF8F30DF
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 15:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6NlCZJwPgoG+IkHdq2YdzdQoUJgsBPb+f9Nqcl6HWo=; b=AzF7Zh+X9iJsS8
	u5A7F7rBC91sSu9x6hoFfNDMEtOlSBvLSyLim1sxugI5YS2KOlS9B3YVZw/C8zKrp6myV0XwTJKeO
	d2frAe3Qo/tkVONDb7LUmWhToQ5gRzJl5bmtnOHzMF88ZecVTvAhMdLKeXjwPBq6HmPMd4YMkFGpe
	LShL4sL9FvynCtLdhPcAgNiUQdfpNvC7G6n8186yxP9oDTNn4WlVJhS7WzcXx+mBg3vdcm9wFxpFE
	I2YC0/dipxM1OUIitFfzfLUdeWSbOtc8LYPIb1n8owng0wE0tirvU+GX/AXkf06v7KmwzD7CXmA0/
	0sIcTZHwXo0WQmlP0CxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiTT-00055l-Hx; Thu, 07 Nov 2019 14:09:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiTM-00052Z-3C
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 14:09:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F295F5076;
 Thu,  7 Nov 2019 15:09:12 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 82a89e4f;
 Thu, 7 Nov 2019 15:08:59 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 15:09:02 +0100
Message-Id: <20191107140903.21731-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_060916_288353_2F503B9A 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] build: image: add common and
 reproducible IMG_PART_SIGNATURE variable
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

RnJvbTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgoKeDg2LCBtdmVidSBhbmQgdGVn
cmEgdGFyZ2V0cyBhcmUgY3VycmVudGx5IHVzaW5nIG1vcmUgb3IgbGVzcyBzYW1lClNJR05BVFVS
RSB2YXJpYWJsZSB3aGljaCBwcm92aWRlcyB1bmlxdWUgcGFydGl0aW9uIElEL3NpZ25hdHVyZSwg
c28gaXQKbWFrZXMgc2Vuc2UgdG8gcmVmYWN0b3IgaXQgb3V0IGludG8gY29tbW9uIHZhcmlhYmxl
IHdoaWNoIGNvdWxkIGJlCnJldXNlZCBieSBhbGwgdGFyZ2V0cy4gIFdoaWxlIGF0IGl0LCBtYWtl
IHRoZSBjb250ZW50IG9mIHRoZSB2YXJpYWJsZQpyZXByb2R1Y2libGUuCgpSZWY6IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMTktTWFyY2gvMDE2
MTQ4Lmh0bWwKU2lnbmVkLW9mZi1ieTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgpT
dWdnZXN0ZWQtYnk6IEpvLVBoaWxpcHAgV2ljaCA8am9AbWVpbi5pbz4KW3JlbmFtZWQgdG8gSU1H
X1BBUlRTSUdOQVRVUkUsIHJld29ya2VkIHdpdGggZXBvY2grdmVybWFnaWMgaGFzaF0KU2lnbmVk
LW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBpbmNsdWRlL2ltYWdl
Lm1rIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2ltYWdlLm1rIGIvaW5jbHVkZS9pbWFnZS5tawppbmRleCA3N2Q0NTY3MTk3MTEuLjg3
NTVjNDgzMmFiZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9pbWFnZS5taworKysgYi9pbmNsdWRlL2lt
YWdlLm1rCkBAIC00NCw2ICs0NCw3IEBAIElNR19QUkVGSVhfVkVSQ09ERTo9JChpZiAkKENPTkZJ
R19WRVJTSU9OX0NPREVfRklMRU5BTUVTKSwkKGNhbGwgc2FuaXRpemUsJChWRVJTCiBJTUdfUFJF
RklYOj0kKFZFUlNJT05fRElTVF9TQU5JVElaRUQpLSQoSU1HX1BSRUZJWF9WRVJOVU0pJChJTUdf
UFJFRklYX1ZFUkNPREUpJChJTUdfUFJFRklYX0VYVFJBKSQoQk9BUkQpJChpZiAkKFNVQlRBUkdF
VCksLSQoU1VCVEFSR0VUKSkKIElNR19ST09URlM6PSQoSU1HX1BSRUZJWCktcm9vdGZzCiBJTUdf
Q09NQklORUQ6PSQoSU1HX1BSRUZJWCktY29tYmluZWQKK0lNR19QQVJUX1NJR05BVFVSRTo9JChz
aGVsbCBlY2hvICQoU09VUkNFX0RBVEVfRVBPQ0gpJChMSU5VWF9WRVJNQUdJQykgfCBta2hhc2gg
bWQ1IHwgaGVhZCAtLWJ5dGVzIDgpCiAKIE1LRlNfREVWVEFCTEVfT1BUIDo9IC1EICQoSU5DTFVE
RV9ESVIpL2RldmljZV90YWJsZS50eHQKIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
