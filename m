Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891681EE4F7
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 15:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QN7KGs67L+4jy2hzpjNZw8y+DXYFSRT0hRcZiDfSjWg=; b=mew+PEccU6f52W
	KI9UguXRBVvh3jYciwXZVtYjYHsofRXAhhwrU33zWn3xdsOt+w64URulqPmIBp+hAi9aMYIfyfRoC
	fZsqeF7tqSotrKHQgVIHhu6RIIew/Rum9aQdewn7lVH6EK2yAJu+t63bzCERoAcx2aVsg9w7Vzjkf
	614aaokUSx6nsFEYk3oyVnFWPen9UxfpuDIC9yRrvJ0szDEh2J88aIJR4oS/0N8kkfoBg5W0VQpWa
	voYZOWamqIbSYS8ai1HwCBDuTSzTsOb4rLxjmAOz47kF469kn/1V7qglaaJ/SMlxkSvtc/Kcaymd9
	tAkF/jZ/rSJBX7qc0pPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpaA-0000W4-C2; Thu, 04 Jun 2020 13:06:54 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpZz-0000VJ-Pr
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 13:06:48 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 054D6bXq016341
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Thu, 4 Jun 2020 15:06:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1591275997; bh=UYMUR/bhWpeuHm9qyOdQG+MYReppdlwGzHQdWzEAmbE=;
 h=From:To:Subject:Date:Message-ID:From;
 b=lkzJs3cnT+NAJIYZ9ABMIjKm/9YvtWLNdbMVLtBSOlqZ0J67Tl5Uj6xaVQjnB9i3a
 sQOGcMRjtbcsjilW5uWFqxSwC1FkQWqLcb9FYgL+bCGW46PItFBekXywzMcrh80EKT
 b+nAyACesI7m5mdG1q82IgS54c287bWSb/kFEMLk=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>) id 1jgpZt-00017n-AP
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 15:06:37 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Organization: m
Date: Thu, 04 Jun 2020 15:06:37 +0200
Message-ID: <87pnafyo82.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_060644_374034_A88652DE 
X-CRM114-Status: UNSURE (   6.45  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] DSA vlan configuration
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

RGlkIHNvbWUgcXVpY2sgZXhwZXJpbWVudHMgb24gbXkgV1JUMTkwMEFDdjEgKE1hbWJhKSBub3cg
dGhhdCBEU0EgaXMKZmluYWxseSBpbiBtYXN0ZXIuLi4gCgpJIHdvbmRlciBpZiBJIGhhdmUgdW5k
ZXJzdG9vZCB0aGlzIGNvcnJlY3RseToKMSkgdmxhbl9maWx0ZXJpbmcgaXMgcmVxdWlyZWQgd2hl
biBicmlkZ2luZyB0YWdnZWQgYW5kIHVudGFnZ2VkIERTQQogICBwb3J0cywgYW5kCjIpIGFsbCBi
cmlkZ2UgcG9ydHMsIGluY2x1ZGluZyB0aGUgd2lyZWxlc3MgVklGcywgbXVzdCBiZSBjb25maWd1
cmVkCiAgIHdpdGggdGhlIGNvcnJlY3QgVklEcyB3aGVuIHZsYW5fZmlsdGVyaW5nIGlzIGVuYWJs
ZWQKCkFuIGlmIHNvLCBob3cgYXJlIHdlIHN1cHBvc2VkIHRvIGNvbmZpZ3VyZSB0aGF0PwoKCkkg
Z3Vlc3MgYSByZWFsIGV4YW1wbGUgaGVscHMgaWxsdXN0cmF0aW5nIHRoZSBwcm9ibGVtLiAgTXkg
ZXhhbXBsZQpuZXR3b3JrIGhhcyAzIGJyaWRnZXMsIGVhY2ggY29ubmVjdGluZyBhIHNldCBvZiB1
bnRhZ2dlZCBwb3J0cy9WSUZzIHdpdGgKb25lIHNwZWNpZmljIHRhZ2dlZCB2bGFuIG9uIHRoZSAi
d2FuIiBwb3J0OgoKY29uZmlnIGludGVyZmFjZSAnbGFuJwogICAgICAgIG9wdGlvbiB0eXBlICdi
cmlkZ2UnCiAgICAgICAgb3B0aW9uIGlmbmFtZSAnd2FuLjcgbGFuMiBsYW4zIGxhbjQnCiAgICAg
ICAgb3B0aW9uIHByb3RvICdub25lJwoKY29uZmlnIGludGVyZmFjZSAnYW50aWJva3MnCiAgICAg
ICAgb3B0aW9uIGlmbmFtZSAnd2FuLjgnCiAgICAgICAgb3B0aW9uIHR5cGUgJ2JyaWRnZScKICAg
ICAgICBvcHRpb24gcHJvdG8gJ25vbmUnCgpjb25maWcgaW50ZXJmYWNlICdvb2InCiAgICAgICAg
b3B0aW9uIGlmbmFtZSAnd2FuLjIwMyBsYW4xJwogICAgICAgIG9wdGlvbiB0eXBlICdicmlkZ2Un
CiAgICAgICAgb3B0aW9uIHByb3RvICdzdGF0aWMnCiAgICAgICAgb3B0aW9uIGlwYWRkciAnMTky
LjE2OC45OS4yJwogICAgICAgIG9wdGlvbiBuZXRtYXNrICcyNTUuMjU1LjI1NS4wJwogICAgICAg
IG9wdGlvbiBkbnMgJzE5Mi4xNjguOTkuMScKICAgICAgICBvcHRpb24gZG5zX3NlYXJjaCAnbW9y
ay5ubycKCgooSSByZWFsaXplIHRoYXQgdGhpcyBjb3VsZCBiZSBtZXJnZWQgdG8gYSBzaW5nbGUg
YnJpZGdlIHd0aAp2bGFuX2ZpbHRlcmluZywgYnV0IHRoYXQgZG9lc24ndCByZWFsbHkgY2hhbmdl
IHRoZSBjb25maWd1cmF0aW9uCnByb2JsZW0uKQoKRm9yIG5vdyBJIGhhdmUganVzdCBoYXJkY29k
ZWQgYnJpZGdlLCBwb3J0IGFuZCBWSUYgbmFtZXMgaW4gYSBzaW1wbGUKc2NyaXB0LiAgQnV0IHRo
aXMgaXMgb2J2aW91c2x5IG5vdCBhIHdvcmthYmxlIHBlcm1hbmVudCBzb2x1dGlvbi4uCgojIDEu
IGVuYWJsZSB2bGFuIGZpbHRlcmluZyBvbiBhbGwgYnJpZGdlcwpmb3IgYiBpbiBsYW4gYW50aWJv
a3Mgb29iOyBkbwogIGVjaG8gMSA+L3N5cy9jbGFzcy9uZXQvYnItJGIvYnJpZGdlL3ZsYW5fZmls
dGVyaW5nCmRvbmUKCiMgMi4gY29uZmlndXJlIHRoZSB2bGFucyBmb3IgZWFjaCBicmlkZ2UgcG9y
dApmb3IgcCBpbiB3YW4uNyB3bGFuMCB3bGFuMSBsYW4yIGxhbjMgbGFuNDsgZG8KICBicmlkZ2Ug
dmxhbiBhZGQgdmlkIDcgcHZpZCB1bnRhZ2dlZCBkZXYgJHAKICBicmlkZ2UgdmxhbiBkZWwgdmlk
IDEgZGV2ICRwCmRvbmUKZm9yIHAgaW4gd2FuLjggd2xhbjAtMSB3bGFuMS0xOyBkbwogIGJyaWRn
ZSB2bGFuIGFkZCB2aWQgOCBwdmlkIHVudGFnZ2VkIGRldiAkcAogIGJyaWRnZSB2bGFuIGRlbCB2
aWQgMSBkZXYgJHAKZG9uZQpmb3IgcCBpbiB3YW4uMjAzIHdsYW4wLTIgbGFuMTsgZG8KICBicmlk
Z2UgdmxhbiBhZGQgdmlkIDIwMyBwdmlkIHVudGFnZ2VkIGRldiAkcAogIGJyaWRnZSB2bGFuIGRl
bCB2aWQgMSBkZXYgJHAKZG9uZQoKIyAzLiBjb25maWd1cmUgdmxhbiBmb3IgbG9jYWwgYnJpZGdl
IGludGVyZmFjZXMKYnJpZGdlIHZsYW4gYWRkIHZpZCAyMDMgcHZpZCB1bnRhZ2dlZCBkZXYgYnIt
b29iIHNlbGYKYnJpZGdlIHZsYW4gZGVsIHZpZCAxIGRldiBici1vb2Igc2VsZgoKCgpUaGUgd29y
a2luZyByZXN1bHQgaXM6CgoKcm9vdEB3cnQxOTAwYWMtMTovIyBicmN0bCBzaG93CmJyaWRnZSBu
YW1lICAgICBicmlkZ2UgaWQgICAgICAgICAgICAgICBTVFAgZW5hYmxlZCAgICAgaW50ZXJmYWNl
cwpici1hbnRpYm9rcyAgICAgICAgICAgICA3ZmZmLmI0NzUwZTYwYjdlNSAgICAgICBubyAgICAg
ICAgICAgICAgd2xhbjAtMQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHdhbi44CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgd2xhbjEtMQpici1sYW4gICAgICAgICAgN2ZmZi5iNDc1MGU2
MGI3ZTUgICAgICAgbm8gICAgICAgICAgICAgIGxhbjQKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYW4yCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2FuLjcKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3bGFuMAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhbjMKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3bGFuMQpi
ci1vb2IgICAgICAgICAgN2ZmZi5iNDc1MGU2MGI3ZTUgICAgICAgbm8gICAgICAgICAgICAgIHds
YW4wLTIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB3YW4uMjAzCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbGFuMQoKcm9vdEB3cnQxOTAwYWMtMTovIyBncmVwIC4gL3N5cy9jbGFzcy9u
ZXQvKi9icmlkZ2Uvdmxhbl9maWx0ZXJpbmcgCi9zeXMvY2xhc3MvbmV0L2JyLWFudGlib2tzL2Jy
aWRnZS92bGFuX2ZpbHRlcmluZzoxCi9zeXMvY2xhc3MvbmV0L2JyLWxhbi9icmlkZ2Uvdmxhbl9m
aWx0ZXJpbmc6MQovc3lzL2NsYXNzL25ldC9ici1vb2IvYnJpZGdlL3ZsYW5fZmlsdGVyaW5nOjEK
CnJvb3RAd3J0MTkwMGFjLTE6LyMgYnJpZGdlIHZsYW4KcG9ydCAgICB2bGFuIGlkcwpsYW40ICAg
ICA3IFBWSUQgRWdyZXNzIFVudGFnZ2VkCgpsYW4zICAgICA3IFBWSUQgRWdyZXNzIFVudGFnZ2Vk
CgpsYW4yICAgICA3IFBWSUQgRWdyZXNzIFVudGFnZ2VkCgpsYW4xICAgICAyMDMgUFZJRCBFZ3Jl
c3MgVW50YWdnZWQKCmJyLWFudGlib2tzICAgICAgMSBQVklEIEVncmVzcyBVbnRhZ2dlZAoKd2Fu
LjggICAgOCBQVklEIEVncmVzcyBVbnRhZ2dlZAoKYnItbGFuICAgMSBQVklEIEVncmVzcyBVbnRh
Z2dlZAoKd2FuLjcgICAgNyBQVklEIEVncmVzcyBVbnRhZ2dlZAoKYnItb29iICAgMjAzIFBWSUQg
RWdyZXNzIFVudGFnZ2VkCgp3YW4uMjAzICAyMDMgUFZJRCBFZ3Jlc3MgVW50YWdnZWQKCndsYW4x
ICAgIDcgUFZJRCBFZ3Jlc3MgVW50YWdnZWQKCndsYW4wICAgIDcgUFZJRCBFZ3Jlc3MgVW50YWdn
ZWQKCndsYW4wLTEgIDggUFZJRCBFZ3Jlc3MgVW50YWdnZWQKCndsYW4wLTIgIDIwMyBQVklEIEVn
cmVzcyBVbnRhZ2dlZAoKd2xhbjEtMSAgOCBQVklEIEVncmVzcyBVbnRhZ2dlZAoKCgoKCgoKQmrD
uHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
