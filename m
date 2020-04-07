Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECBA1A0F4F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 16:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x5GEjFcIeWrhAHP//cMMxZL64vT9Tu5bWA30JDCL0E=; b=DpXcyajW3p6h3n
	FGHI5nOvSq7rxgG1I6bRDcn1l0OtJnDw1h8ZKpsmQ9vFa5KbxgRsggRbXj0w2U1Ge9hsbkUQoSLPV
	6YKuRidOlxMHvkOqA9LNSeeq95cXiYfd13Vm7etd5ATMGcXu4Ez6M6KnVwAMpCByfKQMQXR8qbjdr
	p300EYgimV6udhPCig/OD7F370CwSj9gwUnJb8XsMNbnOsBPz/QjSPg++fn0ItDvB9vCIRRyxtea7
	jPzQbHuQZF4QGWORRM/9kDUeVSnMh06+AqtPrshy8T6JrDpSS5vxfX/9ZYK/CUjT3lcT0Fa8YTYWG
	SE/qbbuyzeDUb9HausIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpIk-0005HN-Fd; Tue, 07 Apr 2020 14:34:06 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpId-0005H4-Qg
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 14:34:01 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 037EXvY0000389
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 7 Apr 2020 16:33:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586270037; bh=6UQgSm0vHZH0CRzn7WuXLgF9F7UYg+TYfLqKLtNYbCQ=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=gsqUSDbnKsdRQ3CHhRhfrqZ93V4IFJ6dM+wGVO65sE794Y1gnH5A/J6LLY8QS5CTh
 CD8y64tJ7SYNGl5KyMZ2OIUy/N3ZFfjMskaJ4Pp7KW1TMclNWQ0WYxkzv1t9alNMvU
 YebGnd+rDPMrRxoBKc07DWo/oDt3qqNs9Gq9/Z/s=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jLpIa-0002NC-TZ; Tue, 07 Apr 2020 16:33:56 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Andre Valentin <avalentin@marcant.net>
Organization: m
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
Date: Tue, 07 Apr 2020 16:33:56 +0200
In-Reply-To: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net> (Andre
 Valentin's message of "Tue, 7 Apr 2020 10:45:03 +0200")
Message-ID: <878sj7s6uj.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_073400_192448_28D61E90 
X-CRM114-Status: GOOD (  10.72  )
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
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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

QW5kcmUgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5ldD4gd3JpdGVzOgoKPiAzKSBQcm9i
bGVtcyB3aXRoIFFNSSBJbnRlcmZhY2VzCj4gUU1JIGlzIHVzZWQgZm9yIG1vYmlsZSBwaG9uZXMg
YW5kIGludGVyYWN0IHdpdGggdGhlIHFtaV93d2FuIGRyaXZlciBpbiB0aGUga2VybmVsLiBJIGhh
ZCB0cmFuc21pdCBpc3N1ZXMsCj4gc3dpdGNoZWQgdGhlIGRyaXZlciBiYWNrIHRvIHRoZSA0LjE0
IHdoaWxlIHN0aWxsIG9uIDUuNC4gQnV0IHRoZSBzYW1lIHByb2JsZW0gaGFwcGVucyBhZ2Fpbi4K
PiBVbmRlciA0LjE0IHRoaXMgd2FzIG5vdCBhIHByb2JsZW0uIFNvIGl0IHNlZW1zIDUuNCBvciB0
aGUgU09DIHBhdGNoZXMgc29tZWhvdyBhcmUgdGhlIHJvb3QgY2F1c2UuCj4gSGVyZSdzIHRoZSBr
ZXJuZWwgbWVzc2FnZToKPgo+Cj4gWyA0MTk5LjQ0NDE5MV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVy
ZSBdLS0tLS0tLS0tLS0tCj4gWyA0MTk5LjQ1MzUzNF0gV0FSTklORzogQ1BVOiAwIFBJRDogMCBh
dCBuZXQvc2NoZWQvc2NoX2dlbmVyaWMuYzo0NDcgZGV2X3dhdGNoZG9nKzB4MmY4LzB4MzAwCj4g
WyA0MTk5LjQ3MDA3NF0gTkVUREVWIFdBVENIRE9HOiB3d2FuMCAocW1pX3d3YW4pOiB0cmFuc21p
dCBxdWV1ZSAwIHRpbWVkIG91dAoKQW5kIHRoaXMgaXMgbm90IGp1c3QgYW4gb2NjYXNpb25hbCB0
aW1lb3V0PyAgVGhlIGRyaXZlciBoYW5ncyBjb21wbGV0ZWx5CnRoZXJlPwoKSSBkb24ndCB0aGlu
ayB0aGVyZSB3ZXJlIG1hbnkgcW1pX3d3YW4gY2hhbmdlcyBiZXR3ZWVuIHY0LjE0IGFuZCB2NS40
LApleGNlcHQgZm9yIGRldmljZSBhZGRpdGlvbnMgYW5kIHNvbWUgZml4ZXMgd2hpY2ggbW9zdGx5
IGhhdmUgYmVlbgpiYWNrcG9ydGVkIHRvIHY0LjE0LXN0YWJsZS4gQnV0IG1heWJlIHRoaXMgaXMg
cmVsYXRlZCB0byB5b3VyIHNwZWNpZmljCm1vZGVtPyAgRG8geW91IGhhdmUgYSBkZXZpY2UgSUQg
Zm9yIHRoYXQ/CgpEbyB3ZSBrbm93IHRoYXQgVVNCIGlzIHdvcmtpbmcgb24gdjUuNCBCVFc/ICBU
aGUgTVQ3NjIxIGRldmljZSBJIGFtCnVzaW5nIGRvZXNuJ3QgaGF2ZSBhbnkgVVNCIHBvcnRzLCBz
byBJIGNhbid0IGNoZWNrIHRoYXQgbXlzZWxmLgoKSXMgeW91ciBtb2RlbSBjb25uZWN0ZWQgYnkg
VVNCMyBvciBVU0IyPyAgQW55IG9mCgogbHN1c2IgLXYKIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy91
c2IvZGV2aWNlcwogZ3JlcCAuIC9zeXMvYnVzL3VzYi9kZXZpY2VzLyovdmVyc2lvbgoKd2lsbCB0
ZWxsLiAgWW91J2xsIGhhdmUgdG8gbWF0Y2ggdXAgdGhlIGxhdHRlciB3aXRoIHRoZSBkZXZpY2Ug
aWYgeW91CmhhdmUgbW9yZSB0aGFuIG9uZSBVU0IgZGV2aWNlIGNvbm5lY3RlZC4KCgoKQmrDuHJu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
