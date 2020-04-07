Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E82C1A0E5A
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 15:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/8rCKAa9FZGjbcp+foVyrkI38RdPYFoxI7AgAEK/WLA=; b=UClc/5zJDiNQW9
	uqbq60+Qpdc1ImxaAGbi1UvsY+yj0mGmw3O70d8dOuGeT7dTqtdknP6p0EONPH5x2xRWbRhcACl7v
	nCjCdLJRDd2cOQxv0JMaG4FzoMfOwNYTM9rxbLY69OnqFPjFSRdGxbcVtpu+XQVYNW6OsjnNYeV/9
	WlUCl2BCdtvuS22Tlvr2ZszjvulGTZdsYAOUs11QR2xFcBRI3xMc2eoJfSo05M/NLG4IJO5CkoWk4
	XHzGyDHyuj+0F0S2t3BI4de/Pcp9MQhCR2+tUfKxE7WEhHWp2+biLZyUnejIBg6q9d2rVPvqBAwFY
	lMGbbM7DbDXCdjvDE4xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoHw-0003gM-L5; Tue, 07 Apr 2020 13:29:12 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoHp-0003fH-1B
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 13:29:06 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 037DSwJW031208
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Tue, 7 Apr 2020 15:28:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586266138; bh=0AEaXsDLbdqnPHceG3SJNYLIbU0r51f+qsMh0qiKeL0=;
 h=From:To:Subject:Date:Message-ID:From;
 b=oFuLP+1Xday2sY9AmM6Qz47BVBZlsd2yiqWHhIDwFN3XllxWXshzXaWULdLsyActh
 dZMK9VOGWV1gdkB15jPVrSHQU6U3PB0E3aiwEmowNsRKwEmyz4TNRkW5shKg7E+FZe
 MQjzASo+OMDDwHMM9i3UVMcu28g+yooAF9YeWfC4=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>) id 1jLoHh-00026u-Qv
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 15:28:57 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Organization: m
Date: Tue, 07 Apr 2020 15:28:57 +0200
Message-ID: <87eeszs9uu.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_062905_549779_36CD8D6E 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Subject: [OpenWrt-Devel] Is it possible to create two images for the same
 device with a different set of DEVICE_PACKAGES?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIGRldmljZSBJIGFtIHBsYXlpbmcgd2l0aCAoWnlYRUwgV0FQNjgwNSkgY2FuIGJlIHVwZ3Jh
ZGVkIHRvIE9wZW5XcnQKYnkgdGZ0cCdpbmcgYW4gT3BlbldydCBpbml0cmFtZnMgaW1hZ2UgdG8g
aXQuICBCdXQgdGhlIGltYWdlICptdXN0KiBiZQpsZXNzIHRoYW4gNjgxNTc0NCBieXRlcywgd2hp
Y2ggaXMgYSBoYXJkIGNvZGVkIGxpbWl0IGluIHRoZSBPRU0gdGZ0cApzZXJ2ZXIuCgpUaGUgZGV2
aWNlIGFsc28gaW5jbHVkZXMgYSBRdWFudGVubmEgbW9kdWxlLCB3aGljaCBuZWVkcyBhIHJhdGhl
ciBsYXJnZQpmaXJtd2FyZSBpbWFnZSAoNCBNQiBvciBtb3JlKS4gSSB3YW50IHRvIGluY2x1ZGUg
dGhpcyBmaXJtd2FyZSBpbiB0aGUKT3BlbldydCBzeXN1cGdyYWRlIGltYWdlcywgdG8gZW5hYmxl
IGFzIG11Y2ggaGFyZHdhcmUgc3VwcG9ydCBhcwpwb3NzaWJsZSBieSBkZWZhdWx0LgoKQnV0IGlm
IEkgaW5jbHVkZSB0aGUgUXVhbnRlbm5hIGZpcm13YXJlIGluIERFVklDRV9QQUNLQUdFUywgdGhl
biB0aGUKaW5pdHJhbWZzIGltYWdlIGJlY29tZXMgdG9vIGxhcmdlIHRvIGJlIGluc3RhbGxlZCBm
cm9tIE9FTSBmaXJtd2FyZS4KCklzIHRoZXJlIGFueSB3YXkgdG8gd29yayBhcm91bmQgdGhpcz8g
IEkgaGF2ZSBiZWVuIGxvb2tpbmcgYXQgdGhlIG1hZ2ljCm9mIGltYWdlLm1rIGFuZCBmcmllbmRz
IGZvciBob3VycyBub3csIHdpdGhvdXQgc2VlaW5nIGFueSBvYnZpb3VzIGFuZApjbGVhbiBzb2x1
dGlvbi4gIEl0IHdvdWxkIGJlIG5pY2UgaWYgaXQgd2FzIHBvc3NpYmxlIHRvIGJ1aWxkIGEgc2Vw
YXJhdGUKcm9vdGZzIHdpdGggYW4gZXhwbGljaXQgc2hvcnQgcGFja2FnZSBsaXN0LCBvdmVycmlk
aW5nIHRoZSAuY29uZmlnIGZvcgpzcGVjaWFsIHB1cnBvc2UsIHNpemUgcmVzdHJpY3RlZCwgaW1h
Z2VzLgoKQW55b25lIGhhdmUgcG9pbnRlcnMgdG8gZG9jcyBvciByZWxldmFudCBleGFtcGxlcz8K
Ck9yIG1heWJlIHNvbWUgImRvbid0IGRvIHRoYXQiIGFkdmljZT8gIEkgaGF2ZSBhIHNuZWFreSBm
ZWVsaW5nIEkgYW0KbG9va2luZyBhdCB0aGlzIGZyb20gdGhlIHdyb25nIHNpZGUgb3Igc29tZXRo
aW5nLi4uCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
