Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF22143287
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 20:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UuSaFBdCrzqXi+phqmN6zXTQtupZBuWyw/eHqadWe64=; b=LJO41yuZqIrvGe
	YhdxvBlFO3NUNx+mCQz5Id1g5vQLCFAcLe9Dy/O0xRKrXIrncN9mnF4bXL6ENniDtjpts2bYf7fLm
	hsLFqxuuCqxLOqVU4XyGULPaanAyoE6S1fiYgCE2HqF65dj3/VcxdBpXCNN6fXt1hQ3xx65SLrzNr
	xF3NvQ7KNLLsnik2pi7BRDg0HVh8jsT+eJOfCUYnx9ImmremueY15iM2TJ0fUcAW8HD2nGTx8vK9C
	6bD18r3EIP8B52J7f9vg/jj7L7C8pk0SWxW0td2am/K99dTF8IAr7raIccEfx/VT1nqg+1zxz1woi
	jffOvqh7LAlm74QITfGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcus-0006jt-Jf; Mon, 20 Jan 2020 19:40:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcub-0006j9-PI
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 19:40:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8453933F0;
 Mon, 20 Jan 2020 20:40:34 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 35090a4d;
 Mon, 20 Jan 2020 20:40:23 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Jan 2020 20:40:24 +0100
Message-Id: <20200120194024.25841-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_114037_992249_48187B2A 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
 sysupgrade from master
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

Q3VycmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIGRvd25ncmFkZSBmcm9tIG1hc3RlcjoKCiBE
ZXZpY2UgdWJpcXVpdGksZWRnZXJvdXRlcnggbm90IHN1cHBvcnRlZCBieSB0aGlzIGltYWdlCiBT
dXBwb3J0ZWQgZGV2aWNlczogdWJudC1lcngKClNvIGZpeCBpdCBieSBhZGRpbmcgYSBEVFMgYmFz
ZWQgZGV2aWNlIG5hbWUgZnJvbSBtYXN0ZXIgaW50bwpTVVBQT1JURURfREVWSUNFUyBsaXN0LgoK
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQv
bGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tayB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYy
MS5tayBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1rCmluZGV4IDUzYTI2NGY1
MjdhNi4uYTg5OTk5NzQ3MzFhIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdl
L210NzYyMS5taworKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawpAQCAt
NDgzLDYgKzQ4Myw3IEBAIGRlZmluZSBEZXZpY2UvdWJudC1lcngKICAgS0VSTkVMX0lOSVRSQU1G
UyA6PSAkJChLRVJORUwpIHwgdWJudC1lcngtZmFjdG9yeS1pbWFnZSAkKEtESVIpL3RtcC8kJChL
RVJORUxfSU5JVFJBTUZTX1BSRUZJWCktZmFjdG9yeS50YXIKICAgSU1BR0Uvc3lzdXBncmFkZS5i
aW4gOj0gc3lzdXBncmFkZS10YXIgfCBhcHBlbmQtbWV0YWRhdGEKICAgREVWSUNFX1RJVExFIDo9
IFViaXF1aXRpIEVkZ2VSb3V0ZXIgWAorICBTVVBQT1JURURfREVWSUNFUyArPSB1YmlxdWl0aV9l
ZGdlcm91dGVyeAogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHVibnQtZXJ4CiAKQEAgLTQ5MSw2
ICs0OTIsNyBAQCBkZWZpbmUgRGV2aWNlL3VibnQtZXJ4LXNmcAogICBEVFMgOj0gVUJOVC1FUlgt
U0ZQCiAgIERFVklDRV9USVRMRSA6PSBVYmlxdWl0aSBFZGdlUm91dGVyIFgtU0ZQCiAgIERFVklD
RV9QQUNLQUdFUyArPSBrbW9kLWkyYy1hbGdvLXBjYSBrbW9kLWdwaW8tcGNhOTUzeCBrbW9kLWky
Yy1ncGlvLWN1c3RvbQorICBTVVBQT1JURURfREVWSUNFUyArPSB1YmlxdWl0aV9lZGdlcm91dGVy
eC1zZnAKIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSB1Ym50LWVyeC1zZnAKIAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
