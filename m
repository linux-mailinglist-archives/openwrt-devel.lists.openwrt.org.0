Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9002FEF1EF
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qx4K2ulBETuRbGBGIaNDVwjxSD2z86a8AirATAK4sHQ=; b=bBQtgANmWZ0eG++viBNgrajF9W
	kng7IdorQVv4xEeLCb3G+U3ofq9sVUU82+gevVdMsYbw2I75mMriE8lc2jBPaWcRkKEGKm8MbqRb3
	wdPYPVmqmqgXolm8wEshN4gTCvUslRlt+M6RWw3K8czYTFKpnuQJcQIKGMubcoN5H2CTlbfMkV6qK
	wpbWm4xdj+hd0BJH/dzUg6kRjulX8D5dwQS+9wTJ5ezh0GmTUfCu7fyI3VpQ/O2suQ+JbOt1TusvH
	C/hWhTZpSmUDTNSsZt/w4E1I1sCUTmEREobCNuz1CCP+7cihUxxU6ZQsFvMBoQASiO/BBTYMbznNd
	ZV3tEPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmgx-00048C-DJ; Tue, 05 Nov 2019 00:27:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmgq-00047s-Uv
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:27:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9528E4D57;
 Tue,  5 Nov 2019 01:27:17 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1a292eb6;
 Tue, 5 Nov 2019 01:27:07 +0100 (CET)
Date: Tue, 5 Nov 2019 01:27:07 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191105002707.GO22393@meh.true.cz>
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
 <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_162721_300866_15B8AB36 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to
 detect problems with longjmp
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpIYXVrZSBNZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4gWzIwMTktMTEtMDEgMTc6MDY6
MzRdOgoKPiArQUREX0RFRklOSVRJT05TKC1PcyAtV2FsbCAtV2Vycm9yIC1XY2xvYmJlcmVkIC0t
c3RkPWdudTk5IC1nMyAtSS4gLURVQ0lfUFJFRklYPSIke0NNQUtFX0lOU1RBTExfUFJFRklYfSIp
CgppcyB0aGVyZSBhbnkgcmVhc29uIHRvIG5vdCB1c2UgLVdleHRyYSBkaXJlY3RseT8KCiBsaXN0
LmM6MTQwOjExOiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQg
aW50ZWdlciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBmaWxlLmM6NTcyOjUx
OiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBl
eHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBmaWxlLmM6ODUwOjE1OiBlcnJvcjog
Y29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9u
cyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBmaWxlLmM6ODY1OjE1OiBlcnJvcjogY29tcGFyaXNv
biBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9ucyBbLVdlcnJv
cj1zaWduLWNvbXBhcmVdCiBkZWx0YS5jOjE5OTo2OiBlcnJvcjogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdlcnJvcj1pbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiBwYXJzZS5jOjgw
OjEyOiBlcnJvcjogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdlcnJvcj1pbXBs
aWNpdC1mYWxsdGhyb3VnaD1dCiBwYXJzZS5jOjgxOjEyOiBlcnJvcjogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwgdGhyb3VnaCBbLVdlcnJvcj1pbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiBmaWxlLmM6
NTcyOjUxOiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50
ZWdlciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBmaWxlLmM6ODUwOjE1OiBl
cnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHBy
ZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBmaWxlLmM6ODY1OjE1OiBlcnJvcjogY29t
cGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9ucyBb
LVdlcnJvcj1zaWduLWNvbXBhcmVdCiBkZWx0YS5jOjE5OTo2OiBlcnJvcjogdGhpcyBzdGF0ZW1l
bnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdlcnJvcj1pbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiBwYXJz
ZS5jOjgwOjEyOiBlcnJvcjogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdlcnJv
cj1pbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiBwYXJzZS5jOjgxOjEyOiBlcnJvcjogdGhpcyBzdGF0
ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdlcnJvcj1pbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiB1
Y2ltYXAuYzoxNDY6MTY6IGVycm9yOiBjb21wYXJpc29uIGJldHdlZW4gc2lnbmVkIGFuZCB1bnNp
Z25lZCBpbnRlZ2VyIGV4cHJlc3Npb25zIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KIHVjaW1hcC5j
OjE1MToxNzogZXJyb3I6IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGlu
dGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQogdWNpbWFwLmM6MjQzOjM0
OiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBl
eHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiB1Y2ltYXAuYzoyNDc6OTogZXJyb3I6
IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGludGVnZXIgZXhwcmVzc2lv
bnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQogdWNpbWFwLmM6MjU0OjM5OiBlcnJvcjogY29tcGFy
aXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9ucyBbLVdl
cnJvcj1zaWduLWNvbXBhcmVdCiB1Y2ltYXAuYzoyNTg6OTogZXJyb3I6IGNvbXBhcmlzb24gYmV0
d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGludGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJyb3I9c2ln
bi1jb21wYXJlXQogdWNpbWFwLmM6Mjg1OjM0OiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNp
Z25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBh
cmVdCiB1Y2ltYXAuYzozNjM6MTc6IGVycm9yOiBjb21wYXJpc29uIGJldHdlZW4gc2lnbmVkIGFu
ZCB1bnNpZ25lZCBpbnRlZ2VyIGV4cHJlc3Npb25zIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KIHVj
aW1hcC5jOjU2MzoxMjogZXJyb3I6IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2ln
bmVkIGludGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQogdWNpbWFwLmM6
NzUzOjE4OiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50
ZWdlciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiB1Y2ltYXAuYzo4Nzk6MTc6
IGVycm9yOiBjb21wYXJpc29uIGJldHdlZW4gc2lnbmVkIGFuZCB1bnNpZ25lZCBpbnRlZ2VyIGV4
cHJlc3Npb25zIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KCllvdXNvbmcgWmhvdSA8eXN6aG91NHRl
Y2hAZ21haWwuY29tPiBbMjAxOS0xMS0wNCAxMToyOTowNV06Cgo+IFRoZSAtV2Nsb2JiZXIgY2hl
Y2sgY2FuIHByb2R1Y2UgZmFsc2UtcG9zaXRpdmVzIHJpZ2h0PwoKSSBkaWRuJ3QgbG9va2VkIGRl
ZXBlciwgYnV0IEdDQyA2LDcsOCw5IG9uIHg4Ni82NCByZXBvcnRzIGZvbGxvd2luZzoKCiBsaXN0
LmM6NjI2OjIxOiBlcnJvcjogdmFyaWFibGUg4oCYcHJlduKAmSBtaWdodCBiZSBjbG9iYmVyZWQg
Ynkg4oCYbG9uZ2ptcOKAmSBvciDigJh2Zm9ya+KAmSBbLVdlcnJvcj1jbG9iYmVyZWRdCiAgNjI2
IHwgIHN0cnVjdCB1Y2lfb3B0aW9uICpwcmV2ID0gTlVMTDsKICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgIF5+fn4KCiBsaXN0LmM6NjI3OjE0OiBlcnJvcjogdmFyaWFibGUg4oCYdmFsdWUy4oCZ
IG1pZ2h0IGJlIGNsb2JiZXJlZCBieSDigJhsb25nam1w4oCZIG9yIOKAmHZmb3Jr4oCZIFstV2Vy
cm9yPWNsb2JiZXJlZF0KICA2MjcgfCAgY29uc3QgY2hhciAqdmFsdWUyID0gTlVMTDsKICAgICAg
fCAgICAgICAgICAgICAgXn5+fn5+CgpidXQgY2xhbmcgOSwxMCBvbiB4ODYvNjQgZG9lc24ndC4K
Ci0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
