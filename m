Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C5D1A1081
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 17:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOS7/Qez6rcVJCOBuRs54uFw7qDhMkuI0qB9oH8CZEs=; b=urP81wKgBCRZLj
	fxWQx/JzsT5UHxFe2oYDwtLxC3v566mgyff6h3E04TNht2QeG0ZgNMIUkeVQe27jH9+MVhGqwvWpt
	pKhnFRD+O9pkcCFvRvZETd/ayBTHJlZgQMXiqUR1IRi9M15VCLa5So0X56hXAAUFi4yX/m5mj6Lq1
	7YBPat8V2Zm4dlipGh1NX5U/27A6Mj2BFZkHRFfezP9SoVX6+VdehZ/3s3+zgBbpZvfuP0SOtZE8w
	51qcmbmuowiS8wjDA/HTK5eKM+uSK+YyUBauJD6SbLpGz/GSiKcg6stqmiz7+TGHBVJ3TBqOwtVFd
	cy1wjy0SrWChQQ9xc9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqQs-0006O8-5W; Tue, 07 Apr 2020 15:46:34 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqQj-0006NU-8w
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 15:46:27 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 037FkMKd016701
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 7 Apr 2020 17:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586274382; bh=xGMN/bL0eQxC+9X+itnqJGuX/7DdoR7TF1Qe8r5sp4U=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=OMrh/VauvEXo7onPXZDbpmYgd1GdP6oAqmt7u4ezzqR0XiszH73esVc9c5EbpI9kO
 meYriB2mmwFqL9DE2HtJSPkEaVPNj9vYFvaFZKJ8Eh19fZpV8JnI8Vz7axuYRCbN7e
 30DfkRbeuUTXTSh7gZGhlv9lGdtbMD41wIbz5NnM=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jLqQg-0002gU-56; Tue, 07 Apr 2020 17:46:22 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Andre Valentin <avalentin@marcant.net>
Organization: m
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <878sj7s6uj.fsf@miraculix.mork.no>
 <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net>
Date: Tue, 07 Apr 2020 17:46:22 +0200
In-Reply-To: <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net> (Andre
 Valentin's message of "Tue, 7 Apr 2020 17:13:26 +0200")
Message-ID: <87sghfqoxd.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_084625_849105_F309A5AC 
X-CRM114-Status: UNSURE (   6.53  )
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

QW5kcmUgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5ldD4gd3JpdGVzOgoKPj4gSXMgeW91
ciBtb2RlbSBjb25uZWN0ZWQgYnkgVVNCMyBvciBVU0IyPyAgQW55IG9mCj4KPiBUaGUgbW9kZW0g
aXMgYW4gaW50ZWdyYXRlZCBVU0IzIExURSBtb2RlbS4gQXMgc2FpZCwgd2l0aG91dCBxbWFwIGl0
Cj4gd29ya3Mgc3RhYmxlLgoKYWgsIG1pc3NlZCB0aGF0IGltcG9ydGFudCBwb2ludC4KClRoZXJl
IHdlcmUgYSBmZXcgcW1hcCBmaXhlcyBiZXR3ZWVuIHY0LjE0IGFuZCB2NS40LCBidXQgSSBndWVz
cyB3ZSBjYW4KcnVsZSBvdXQgdGhvc2Ugc2luY2UgeW91IGhhdmUgdGhlIHNhbWUgaXNzdWVzIHdp
dGggdGhlIHY0LjE0IGRyaXZlciBvbgp2NS40LgoKSSBtdXN0IGFkbWl0IEkgYW0gdG90YWxseSBi
bGFuayBoZXJlLiAgSSBoYXZlbid0IGFjdHVhbGx5IHRlc3RlZCB0aGUKcW1hcCBmZWF0dXJlcyBt
dWNoIHlldC4gIEl0IGlzIGNvbXBsZXRlbHkgaW50ZWdyYXRlZCBpbiBxbWlfd3dhbi4gIEJ1dAp0
aGVyZSBpcyBhbHNvIGEgc2VwYXJhdGUgaW1wbGVtZW50YXRpb24gZnJvbSBRdWFsY29tbSBpbgpk
cml2ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9ybW5ldCAuICBXaGljaCBJIGhhdmVuJ3QgdHJp
ZWQgYXQgYWxsLi4uCgpBcmUgeW91IHVzaW5nIHRoZSBRTUFQIGltcGxlbWVudGF0aW9uIGluIHFt
aV93d2FuPyAgVGhhdCdzIHRoZSBvbmUgd2l0aAp0aGUgIC9zeXMvY2xhc3MvbmV0L3d3YW4wL3Ft
aS97YWRkLGRlbH1fbXV4IEFCSS4KCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
