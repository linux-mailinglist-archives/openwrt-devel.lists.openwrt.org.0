Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915E61A0FA7
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 16:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuCwByE0SbmdhmT/fYEfCUTexCa6AlRwSW9cn5lbfBA=; b=Tx1ss1QEm+XoLD
	bVuay8T1XMIGuH+K0/TtoTI0aaNiydDr9QGtrDQfdDpacnAwZ3V9cgOIoJp8g2lE2id3ExTsf5vld
	/c8xVUAScUWQC4RA37DoGJUtCtQ9UMh/zQhvJGKfNAfAcnqqkieUzbuwxKnJom99+WacJK1TWAHIP
	gtxQcL0e707waJCMUoGkdSX4ftcr365DPkyQwAJ0RQS5vS13jrK49UchTjlTqCCGlR7GAa9ittFnT
	5rzM/92tcQdUMh0ZJs9V0SXPJvLivT+idVDbMXpQAzB8ehvZlcb2gRIIQHOYk6kU1mKFJ1QsUZdgk
	AWsMATrETvpUjuhVQPDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpYw-0001s9-Aq; Tue, 07 Apr 2020 14:50:50 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpYo-0001rm-Oj
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 14:50:44 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 037Eods1013219
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 7 Apr 2020 16:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586271039; bh=Z9EAOro4VgF59AlL5bl/OhRoAqVxID1Q3s1zTJGOOZw=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Q9oZHnJjDH8o2zkAy1OJ+8NWY01FSdliYPoRee7qJwJPfUGbv53+Xs4uSTewbVVFu
 7QD05TnUOUYOYk7Pq7pg3ZsYYk9RbVRJvCyV4gW03nl3tGM3WMz3HQ3r7qjbi4aY2K
 DCVZOXYcfmjXUjDDpY2tBRViYnYRGlmIqQD2tp7Q=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jLpYk-0002RI-Rb; Tue, 07 Apr 2020 16:50:38 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Hannu Nyman <hannu.nyman@iki.fi>
Organization: m
References: <87eeszs9uu.fsf@miraculix.mork.no>
 <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
Date: Tue, 07 Apr 2020 16:50:38 +0200
In-Reply-To: <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi> (Hannu Nyman's
 message of "Tue, 7 Apr 2020 17:22:37 +0300")
Message-ID: <874ktvs62p.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_075043_140564_8F7D18C8 
X-CRM114-Status: GOOD (  13.55  )
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
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
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

SGFubnUgTnltYW4gPGhhbm51Lm55bWFuQGlraS5maT4gd3JpdGVzOgoKPiBJIGRvIG5vdCB0aGlu
ayB0aGF0IHRoZXJlIGlzIGEgbmljZSBjbGVhbiBzb2x1dGlvbiwgYXMgSSBkbyBub3QKPiByZW1l
bWJlciBzZWVpbmcgYSBzb2x1dGlvbiBvZiBkaWZmZXJlbnQgcGFja2FnZXMgZm9yIGluaXJhbWZz
LCBmYWN0b3J5Cj4gYW5kIHN5c3VwZ3JhZGUgaW1hZ2VzLgo+Cj4gSSB3b3VsZCBhcHByb2FjaCB0
aGF0IHdpdGggYSB0d28tc3RlcCBidWlsZCBwcm9jZXNzLCB1c2luZyB0d28gLmNvbmZpZyByZWNp
cGVzOgo+Cj4gKiBGaXJzdCBhIGJ1aWxkIHdpdGggYSBzbWFsbGVyIC5jb25maWcgcmVjaXBlIHdp
dGhvdXQgdGhhdCBsYXJnZQo+IFF1YW50ZW5uYSBmaXJtd2FyZS4gVGhpcyBjcmVhdGVzIHRoZSBp
bml0cmFtZnMgaW1hZ2UsICh3aGljaCB5b3UgY29weQo+IHRvIGEgc2FmZSBwbGFjZSBiZWZvcmUg
dGhlIHNlY29uZCBidWlsZCkKPgo+ICogVGhlbiBhIHNlY29uZCBidWlsZCBmcm9tIGEgcmVjaXBl
IGluY2x1ZGluZyB0aGUgUXVhbnRlbm5hCj4gZmlybXdhcmUuIE5vIG5lZWQgdG8gZG8gIm1ha2Ug
Y2xlYW4iLCBzbyB0aGUgc2Vjb25kIGJ1aWxkIGlzIHJhdGhlcgo+IHF1aWNrLiBUaGF0IHByb2R1
Y2VzIHRoZSBmdWxsIHN5c3VwZ3JhZGUgaW1hZ2UuCj4KPiBJbiB5b3VyIGJ1aWxkIGF1dG9tYXRp
b24gc2NyaXB0cywgdGhvc2UgdHdvIGJ1aWxkcyBjb3VsZCBiZSBydW4KPiBjb25zZXF1dGl2ZWx5
LCB3aXRoIGEgY29weSBzdGVwIGJldHdlZW4gdGhlbS4KPgo+IFRoYXQgd2lsbCBiZSBtdWNoIGVh
c2llciB0aGFuIHRyeWluZyB0byBjb2RlIGEgbG9naWMgaW50byB0aGUgYWN0dWFsCj4gT3Blbldy
dCBidWlsZCBNYWtlZmlsZXMuCgpZZXMsIHN1cmUsIHRoaXMgd2lsbCB3b3JrIGZvciBteSBvd24g
dXNlLiAgQnV0IGl0IGRvZXNuJ3Qgc29sdmUgdGhlCmdlbmVyYWwgcHJvYmxlbSwgd2l0aCBwcmUt
YnVpbHQgaW1hZ2VzIGludm9sdmVkLgoKV2hhdCBpZiBJIHdhbnQgdG8gbWFrZSBhIHJlY2lwZSB0
aGF0IHdvcmtzIG9uIHRoZSBPcGVuV3J0IEJ1aWxkYm90cz8KVGhlIGlkZWEgd2FzIHRvIG1ha2Ug
Zmlyc3QgdGltZSBpbnN0YWxsYXRpb24gYXMgZWFzeSBhcyBwb3NzaWJsZSwgYnkKcHJvdmlkaW5n
IGJvdGggYW4gaW1hZ2UgdGhhdCBjYW4gYmUgaW5zdGFsbGVkIGZyb20gT0VNIGFuZCBhbiBpbWFn
ZSB0aGF0CmVuYWJsZXMgdGhlIGZ1bGwgaGFyZHdhcmUuCgpJIGRpZCBjb21lIHVwIHdpdGggYSBz
b3J0IG9mIHdvcmtpbmcgcHJvb2Ytb2YtY29uY2VwdCBoYWNrLCB3aGVyZSBJIGFkZAphIGJ1aWxk
IHJ1bGUgbGlrZSAoeWVzLCB1Z2x5IC0gSSdtIG5vdCBleGNwZWN0aW5nIHRvIHB1c2ggdGhpcyk6
CgpkZWZpbmUgQnVpbGQvZmlsdGVyZWQtaW5pdHJhbWZzCglybSAtcmYgJChUQVJHRVRfRElSKS54
CglzZWQgLWkgLWUgJ3MsQ09ORklHX0lOSVRSQU1GU19TT1VSQ0U9IiQoc3RyaXAgJChUQVJHRVRf
RElSKSkgLENPTkZJR19JTklUUkFNRlNfU09VUkNFPSIkKHN0cmlwICQoVEFSR0VUX0RJUikpLngg
LCcgJChMSU5VWF9ESVIpLy5jb25maWcKCWNwIC1hICQoVEFSR0VUX0RJUikgJChUQVJHRVRfRElS
KS54CglybSAtcmYgJChUQVJHRVRfRElSKS54L2xpYi9maXJtd2FyZS9xdjg0MCAkKFRBUkdFVF9E
SVIpLngvdXNyL2xpYi9vcGtnL2luZm8vcXY4NDAtZmlybXdhcmUuKgoJJChjYWxsIEltYWdlL0J1
aWxkS2VybmVsL0luaXRyYW1mcykKZW5kZWYKCgpJIHdhcyBqdXN0IGhvcGluZyB0aGVyZSB3b3Vs
ZCBiZSBuaWNlciB3YXlzIHRvIGRvIGl0LgoKCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
