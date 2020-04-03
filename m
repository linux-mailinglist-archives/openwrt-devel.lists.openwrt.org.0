Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166E919DEC2
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 21:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUDwbtaRteLoWZRFgF+C9eeHW+lo/iteY1yCsHJPL8w=; b=bAlZtlA1/GTZjg
	0RqWQlGud/VvgUeOk85om6kJVnV3BsKLzBeRRYKr49I48QlgvnMJok2f6e/RBKXdeJgidr6/skruC
	UjZunJrzKpPkdXZSUlDvqHdEVBTtLQss7yotzJiPeruVpLFzBkVaB7PY8xySa1SgMEM7L496x/k54
	4wK1iKGPtmBH+q1hk+UcPv0FBBKqsstc99noBe0mmYn57/vo5xzVUvJAMwGhlwyDYh0E3EgpYMmaT
	gAyuatTTLYfFn0Q6WUls/SnViAkVI3Dy7bspgEKYbIQGk/MmX9Wh3TxxJNuFk44f7vwu/DYOsLSdP
	qfgYKie9rXnUCiB6eh3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSL4-0006EH-28; Fri, 03 Apr 2020 19:50:50 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSKv-0006Db-QK
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 19:50:43 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 033JoXpP006367
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 3 Apr 2020 21:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585943434; bh=9lDqrvqIw4xzcsOqCfasZL/RH1OCcJTu/AI3lrIp4Sg=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=HBgGHKHV7dC9ogODmystu43EBGPz4yfIXAlPvAqgI2/+UoOhCX4Eozr8XHn04CZP6
 08WJAid7tsOkKwhEc6JxYcrWNkpTuUXKNpIRgaZkeg6KWFKsV+YvPCmZ2gxhntt3TK
 V+i4yr/9kp3dHEXHFNpmV9n3HBko2fVpN70X2+mY=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jKSKn-0006jJ-Eu; Fri, 03 Apr 2020 21:50:33 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: <mail@adrianschmutzler.de>
Organization: m
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
 <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
 <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
 <CAHP3WfMQmF+rmm2iaTJPakKHDUAKpYoWDh=o_4tE+3LBQjhMbQ@mail.gmail.com>
 <87k12wveuc.fsf@miraculix.mork.no>
 <01f201d609ef$e09c4620$a1d4d260$@adrianschmutzler.de>
Date: Fri, 03 Apr 2020 21:50:33 +0200
In-Reply-To: <01f201d609ef$e09c4620$a1d4d260$@adrianschmutzler.de> (mail's
 message of "Fri, 3 Apr 2020 21:41:30 +0200")
Message-ID: <87r1x4tkl2.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125042_186519_7BDEA566 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 'Russell Senior' <russell@personaltelco.net>,
 'David Bauer' <mail@david-bauer.net>, 'Magnus Kroken' <mkroken@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JpdGVzOgoKPj4gQVAgaXMgbm93IHJldml2ZWQg
KndpdGgqIHY1LjQgYnVpbHQgd2l0aCBnY2MtOC40LjAuCj4KPiBTbywgdGhpcyBpcyBzb3J0ZWQg
b3V0PwoKV2VsbC4uLiBUaGVyZSBpcyBhIGtlcm5lbCBwYXRjaCB3aGljaCBzZWVtcyB0byB3b3Jr
IGZvciBtZSwgYW5kIHRoYXQncyBhbGwuCgpCdXQgSSdtIHVuYWJsZSB0byB3cml0ZSBhbnkgbWVh
bmluZ2Z1bCBjb21taXQgbWVzc2FnZSBleHBsYWluaW5nIGl0LiAgU28KdGhpcyBzdGlsbCBuZWVk
cyB0byBiZSBsb29rZWQgYXQgYnkgc29tZW9uZSB3aXRoIGEgY2x1ZS4uLgoKSSBkb24ndCB0aGlu
ayA1LjQgc2hvdWxkIGJlIG1hZGUgZGVmYXVsdCBmb3IgYXRoNzkgYmVmb3JlIHRoaXMgaXMgc29y
dGVkCm91dCBwcm9wZXJseS4KCj4gSWYgZnVydGhlciB0ZXN0aW5nIGlzIHJlcXVpcmVkLCBJIGhh
dmUgYSBVbmlmaSBBQyBNZXNoIGFuZCBzZXZlcmFsCj4gVFAtTGluayBkZXZpY2VzIGF0IGhhbmQg
KGJ1dCBvbmx5IGxpbWl0ZWQgdGltZSBmb3IgdGVzdGluZykuICBJIG1pZ2h0Cj4gYWxzbyB0cnkg
d2hhdCBoYXBwZW5zIG9uIHRpbnkgLi4uCgpGdXJ0aGVyIHRlc3RpbmcgaXMgZGVmaW5pdGVseSBu
ZWNlc3NhcnkuIE1heWJlIHRob3NlIHdpdGggYW4gYWxyZWFkeQpjcmFzaGluZyBkZXZpY2UgY291
bGQgc3RhcnQ/CgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
