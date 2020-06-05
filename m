Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BD11EF758
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 14:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxKdQO0u1kgvktWSZNLzaSFG4Kqys1dHbBbdudGTY+8=; b=KyVR2SfPblHHgJ
	mnfwtItdsxKDFg48CmAktKquMW91+v7vOwW3cyjGygmnOE1fq4hzBeHdlKozkNh/z8ZN2TCRMLqQv
	5BhiwI4xFxv1K4+XXrkYQeMppQCMrzr6ewRGjM5nEoa2aB3jfTOh9Jd3YtM/3Ckwb1gT7scDw38aV
	wG3c8NJfceIeweKlUwlVaw+94JsHC8FskRs2xg3C8f8Itknt2xanVn4/WnoPc0VzXkn2R+IOft4+u
	Fo7k8+qttoZZA/5mm0t4yYucUdPa0lY3fcnbfobmZlPaJhEI0TKuvd/8JEKXevRgJkl6p5N+DarVy
	FvbDNpT2CFiKFb9SFFGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBS0-0000PV-4K; Fri, 05 Jun 2020 12:27:56 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBRZ-0000D2-6A
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 12:27:35 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 055CROV1018421
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 5 Jun 2020 14:27:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1591360044; bh=/1cbnAKgFMrzuN6eqRkqBZoz5ibIWBwTfNgZMRgCF9c=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=ozsKGfduGD1D6VWb+X11u6nGKMp+GIjDsQsEjJ0nm4qOpDe0/x2UAWUCD7s7rWf4/
 bXFD1YPo6II5na5wKz2kU3NON4ovskbUHMQUzUZNokwBcdvWFLPuSuh/KHaSpOON/5
 abzQ8e4aXwZOAe2hjVd8uocgP03C6yrOjue2Dsm4=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jhBRU-0003yy-H2; Fri, 05 Jun 2020 14:27:24 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Organization: m
References: <20200605114736.63933-1-freifunk@adrianschmutzler.de>
Date: Fri, 05 Jun 2020 14:27:24 +0200
In-Reply-To: <20200605114736.63933-1-freifunk@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Fri, 5 Jun 2020 13:47:36 +0200")
Message-ID: <87y2p1u28j.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_052729_585971_A27CDE7B 
X-CRM114-Status: UNSURE (   8.65  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC PATCH] sysupgrade: introduce compatibility
 version for devices
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBoYXZlbid0IGV2ZW4gYm90aGVyIHRvIHRyeSB0byB3cml0ZSBhbnkgY29kZSB0byBzZWUgaWYg
dGhpcyBpcwpmZWFzaWJsZSwgYnV0IGFueXdheS4uLgoKSSB3b25kZXIgaWYgdGhlcmUgbWlnaHQg
YmUgbW9yZSBmbGV4aWJsZSBhbmQgdXNlci1mcmllbmRseSB3YXlzIHRvCmhhbmRsZSB1cGdyYWRl
IGluY29tcGF0aWJpbGl0aWVzIGlmIHdlIGFyZSBhbGxvd2VkIHRvIHVzZSBjb2RlL21ldGFkYXRh
CmZyb20gdGhlIG5ldyBpbWFnZSBpbiB0aGUgc3lzdXBncmFkZSBwcm9jZXNzPyAgSW5zdGVhZCBv
ZiBqdXN0IHByb3ZpZGluZwphIHZlcnNpb24gbnVtYmVyIHdpdGggc29tZSBzaW1wbGUgc2VtYW50
aWNzIGxpa2UgeW91IGRlc2NyaWJlLCB0aGUgbmV3CmltYWdlIGNvdWxkIHByb3ZpZGUgYSBzY3Jp
cHQgc25pcHBldCBvciBzaW1pbGFyIHdoaWNoIGNvZGlmaWVzIGEgbW9yZQpwcmVjaXNlIGRlc2Ny
aXB0aW9uIG9mIHRoZSBpbmNvbXBhdGliaWxpdHkuIEFuZCBldmVuIGEgc29sdXRpb24sIGlmCnRo
ZXJlIGlzIG9uZS4KCkZvciB0aGUgRFNBIGV4YW1wbGUsIHN1Y2ggYSBzY3JpcHQgY291bGQgKG9w
dGlvbmFsbHk/KSBtb3ZlIGFuCmluY29tcGF0aWJsZSBjb25maWcvbmV0d29yayBvdXQgb2YgdGhl
IHdheSwgd2hpbGUgbGVhdmluZyBhbGwgb3RoZXIKc2V0dGluZ3MgdW50b3VjaGVkLiAgUHJlc2Vy
dmluZyBlLmcuIHdpcmVsZXNzIGNvbmZpZyBoYXMgYSBsb3Qgb2YgdmFsdWUuCldpdGggdGhlIHBv
c3NpYmlseSB0byBjYW5jZWwgdGhlIHVwZ3JhZGUsIGl0IHdvdWxkIGV2ZW4gYXR0ZW1wdCBhbgpp
bmNvbXBsZXRlIGNvbnZlcnNpb24uICBJTUhPLCB0aGUgbWFpbiByZWFzb24gd2UgY2FuJ3QgZG8g
YXV0b21hdGljIERTQQpjb252ZXJzaW9uIGlzIGJlY2F1c2UgdGhlcmUgd2lsbCBiZSBmYWlsdXJl
cy4gIEJ1dCB0aGlzIGlzbid0IGNyaXRpY2FsCmlmIGl0IGlzIGRldGVjdGVkIHByaW9yIHRvIHVw
Z3JhZGluZy4KCkp1c3QgYSBmZXcgcmFuZG9tIHRob3VnaHRzLiAgU2luY2UgeW91IGFyZSBhYm91
dCB0byBmdW5kYW1lbnRhbGx5CmltcHJvdmUgc3lzdXBncmFkZSBhbnl3YXkgOy0pCgoKQmrDuHJu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
