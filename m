Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211491B885F
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msQwkkVbho81Ueg1toBrgPUaaipLQkPYsCbZyhULRdY=; b=g5FYuye7NmfPuq
	J50M53/MmzQR5JhMIOV1oTVU53Bz47Cxni21qPpXr2VMO3H1KP8q1v8wdjkJnQWULF34A7GuHIGfr
	a3FvQSpz/vMlv9UeNEZGHwOviQadzHAUZ16zz/CNbX8W6daYXwrKZrVWcGqwWKlei9HOLuTEtFg9y
	5teJL5Ceb57Em75f5S8UzB/Jgn+kYSu4uTxDC88CZCOEgLRC01aMUEViN7v2D5djtN69Mm40UjEMR
	Joz8qjhQjgvYnAoG/hBQtwbBpc25sefyayG+J1vZkRMtjpHSVCqxKPoP5p7RG/7yVzP6JFJV4mqW0
	nPyXSCAlJYd1GY+DsESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSP8Y-00045c-B3; Sat, 25 Apr 2020 18:02:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSP8S-00044f-D4
 for openwrt-devel@bombadil.infradead.org; Sat, 25 Apr 2020 18:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=i47JOM8tal0Q/GPsGgBvdWu0mulv7/Gfb60uNa+Ohss=; b=iZKMKgTHqJIyYdgikeBxmCGeyS
 MM6WhNV7i259dV4t333GJda5wgQOmqrtpQlPtCrlqvq8SL7vxOS4W6V9ne4AcF75hY/yIUKgB9+z4
 SR0IJSYMJW6U1Uo/kt5iy2ojNBAx5M8AveYMk/DNQMJq19IfLPHWEN6VFR9fTztgJXTtDBAhpKbVM
 +/oHCb8s0elE/oTwr8YlSr3SgS97aiC5OUfOkQmXx6Os6R1+/WUKyDOKnD1h4Fbh/ZZkeimrezvRB
 AJEF9epGwCWW7rtR5Weoebriaf/BZo3QnGxVJ7Xz3/qany0WQR1wl2q/CnjxEN7CCDSdXzIn0k723
 XEnMmkrA==;
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSP8N-0002lu-5e
 for lede-dev@lists.infradead.org; Sat, 25 Apr 2020 18:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i47JOM8tal0Q/GPsGgBvdWu0mulv7/Gfb60uNa+Ohss=; b=CuF6KussEla2OdTBwadpexrDwm
 VGpr2jxV8+I2FodZoC28azvPParIJV+D+S3N0OYvD5FHqASmggmSKD+V8WPuUjkHUshoBrigVsEBh
 NtvdmzrzSo9Xhe3Z3YyDgSkDJ;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jSP89-00050s-7j
 for lede-dev@lists.infradead.org; Sat, 25 Apr 2020 20:02:21 +0200
To: openwrt-devel@lists.openwrt.org
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
 <3DC38C07-2699-4E82-B3D1-338A308C422A@gmail.com>
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <56e0786e-202d-d43e-90fc-5153fefadda8@lucabert.de>
Date: Sat, 25 Apr 2020 20:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3DC38C07-2699-4E82-B3D1-338A308C422A@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_190236_286611_CD412689 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

QW0gMjUuMDQuMjAyMCB1bSAxOTo1NCBzY2hyaWViIFJvc2VuIFBlbmV2OgoKSGkKCj4+IFNvLCBJ
IGhhdmUgYSAiVFAtTGluayBUTC1XUjEwNDNORCB2MSIgcnVubmluZyBPcGVuV1JUIDE3LjAxLjQu
Cj4+IEknZCBsaWtlIHRvIHVwZGF0ZSBpdCB0byAxOS4wNywgYnV0IEkgcmVhZCBvbgo+PiBodHRw
czovL29wZW53cnQub3JnL3RvaC9od2RhdGEvdHAtbGluay90cC1saW5rX3RsLXdyMTA0M25kX3Yx
IHRoYXQgbXkKPj4gV0xBTi1Td2l0Y2ggaXMgImRpc2NvbnRpbnVlZCIuLi4KPiBOZXZlciBoZWFy
ZCBvZiB0aGlzLiBNaW5lIHdvcmtzIGZpbmUuCgpJZiB5b3UgcmVhZCBpbiB0aGUgcGFnZSBJIHBv
c3RlZCwgdGhlIGRldmljZSBpcyBtYXJrZWQgYXMgImRpc2NvbnRpbnVlZCIuLi4KTXkgU3dpdGNo
IHdvcmtzIGZpbmUsIHRvbywgYnV0IEknZCBsaWtlIHRvIHVwZ3JhZGUgdG8gMTkuMDcsIGlmIHBv
c3NpYmxlLi4uCldoaWNoIHZlcnNpb24gb2YgT3BlbldSVCBydW5zIG9uIHlvdXIgU3dpdGNoPwoK
PiBUaGUgUkFNIGlzIHRoZSBiaWdnZXIgcHJvYmxlbS4gVGhlcmXigJlzIG5vIGdvb2Qgd2F5IGFy
b3VuZCBpdC4gc3dhcCBpcyBub3QgcmVhbGx5IGFuIGFuc3dlci4KCk9mIGNvdXJzZSwgc3dhcCBp
cyBub3QgdGhlIHNvbHV0aW9uLi4uCkkgbXVzdCBzYXksIHRoYXQgaW4gbXkgV0xBTnMgSSByZWFs
bHkgZG9uJ3QgaGF2ZSBtYW55IGNsaWVudHMuLi4KQWN0dWFsbHkgNyBkZXZpY2VzLi4uCldvdWxk
IG15IGRldmljZSBydW4gd2l0aCAxOS4wNyBvciBzaG91bGQgSSBiZXR0ZXIgcmVtYWluIG9uIDE3
LjAxPwoKVGhhbmtzCkx1Y2EgQmVydG9uY2VsbG8KKGx1Y2FiZXJ0QGx1Y2FiZXJ0LmRlKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
