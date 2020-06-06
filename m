Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FB21F06AA
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 15:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tnEwLfsBz+lZzhOod9QilNx1WQQYQYr4xBcqNa4v0mY=; b=LjbhtTyy+tWOVUow6A1z2m8gkm
	jRlUYqnArnP6srTWjVN129PqgRC0kFcHMpSsi+QxCi8kpxthVa0SqfXvAoqENxh29b64V9vM2lFOb
	m+u53re1u72j9+EfzDMnQ0yOK0rn+RJuV0zKe4XIB139r9gdFufvRZak724I3iHlx+HbDKxc6oOml
	t7MValR00xR1tNY+IEuRoTpf3MHRbnXCgpJpRUrQarq9c04yqHP6mHlnMsbm6vAoFrsEr0jfOgnHM
	krNXBHKCDJ7FFJPd7z5vtR7kyW4H2/OxwwZvgGslbCattftfisX+WDR7WJYZh3mGNxF0ppYJyMtt/
	5JOFfakg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYjm-0005y6-Aq; Sat, 06 Jun 2020 13:19:50 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYjf-0005x6-OR
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 13:19:45 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 056DJavw003722
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Sat, 6 Jun 2020 15:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1591449576; bh=AuEmHxpm3d413VSjYLrsGbGTgRLQlHA7MNKFVJ0TLiw=;
 h=From:To:Subject:References:Date:Message-ID:From;
 b=bzJ7u3uKU+8UTikky2MVGZPMY2v1WgrWreeV2mofQxDdalLWiuLp+Ct5BWPBMXicX
 lHEh2S88sY4KjXF4oZTB0U3+cfIF+KNxi8lffdtkxxxrs/wtwJUNBKVbt3ZiAg7NYQ
 dCi/PFhaY/Y315Zs63+rB82EHawm2fihZEncLviE=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>) id 1jhYjY-0005ko-2e
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 15:19:36 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Organization: m
References: <87pnafyo82.fsf@miraculix.mork.no>
Date: Sat, 06 Jun 2020 15:19:36 +0200
In-Reply-To: <87pnafyo82.fsf@miraculix.mork.no> (=?utf-8?Q?=22Bj=C3=B8rn?=
 Mork"'s message of "Thu, 04 Jun 2020 15:06:37 +0200")
Message-ID: <87h7votjpz.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_061944_288033_348C65AF 
X-CRM114-Status: UNSURE (   8.55  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] DSA vlan configuration
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

QmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+IHdyaXRlczoKCj4gSSB3b25kZXIgaWYgSSBoYXZl
IHVuZGVyc3Rvb2QgdGhpcyBjb3JyZWN0bHk6Cj4gMSkgdmxhbl9maWx0ZXJpbmcgaXMgcmVxdWly
ZWQgd2hlbiBicmlkZ2luZyB0YWdnZWQgYW5kIHVudGFnZ2VkIERTQQo+ICAgIHBvcnRzLCBhbmQK
PiAyKSBhbGwgYnJpZGdlIHBvcnRzLCBpbmNsdWRpbmcgdGhlIHdpcmVsZXNzIFZJRnMsIG11c3Qg
YmUgY29uZmlndXJlZAo+ICAgIHdpdGggdGhlIGNvcnJlY3QgVklEcyB3aGVuIHZsYW5fZmlsdGVy
aW5nIGlzIGVuYWJsZWQKPgo+IEFuIGlmIHNvLCBob3cgYXJlIHdlIHN1cHBvc2VkIHRvIGNvbmZp
Z3VyZSB0aGF0PwoKcXVhcmt5IGp1c3QgcG9zdGVkIGEgZ3JlYXQgdGlwIGluIHRoZSBmb3J1bToK
aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L210NzYyMS1kc2Etc3dpdGNoLXZsYW4tY29uZmln
dXJhdGlvbi82NTQ1OC8yP3U9Ym1vcmsKCkRlc3BpdGUgaGF2aW5nIGxvb2tlZCBmb3IgZXhhY3Rs
eSB0aGlzLCBJIGhhZCBub3Qgc2VlbiB0aGUKInZsYW5fZGVmYXVsdF9wdmlkIiBzZXR0aW5nIGJl
Zm9yZS4gIFRoaXMgc2VlbXMgdG8gc29sdmUgdGhlIHByb2JsZW0gSQpkZXNjcmliZWQuCgpJIGJl
bGlldmUgdGhlIHRhZ2dlZCB3YW4gcG9ydCwgd2hlcmUgb25lIFZJRCBvbiB3YW4gaXMgcGFydCBv
ZiBhIGJyaWRnZSwKaXMgYSBzZW1pLWNvbW1vbiB1c2VjYXNlIGZvciBPcGVuV3J0IChhbmQgQ1BF
cyBpbiBnZW5lcmFsKS4gIE1heWJlIHRoaXMKa2luZCBvZiBicmlkZ2UgYXV0b21hdGljYWxseSBz
aG91bGQgZW5hYmxlIHNldHRpbmdzIGxpa2U6CgogaXAgbGluayBzZXQgPGJyLW5hbWU+IHR5cGUg
YnJpZGdlIHZsYW5fZGVmYXVsdF9wdmlkIDx3YW4tdmlkPgogaXAgbGluayBzZXQgPGJyLW5hbWU+
IHR5cGUgYnJpZGdlIHZsYW5fZmlsdGVyaW5nIDEKCmFzIGRlc2NyaWJlZCBieSBxdWFya3k/CgpB
RkFJQ1MsIGEgRFNBIGJhc2VkIGJyaWdkZSB3b24ndCB3b3JrIHdpdGhvdXQgc29tZXRoaW5nIGxp
a2UgdGhhdCwgYW5kCmhhdmluZyBlYWNoIHVzZXIgZmlndXJlIHRoYXQgb3V0IGJ5IHRoZW1zZWx2
ZXMgaXMgZ29pbmcgdG8gY3JlYXRlIGEgbG90Cm9mIGZydXN0cmF0aW9uLi4uCgoKQmrDuHJuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
