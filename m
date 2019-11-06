Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC5AF10B6
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 09:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sFe/tUu19nv/SBKqcTB+SuYZW0uSJxd6BPBTt27ezg=; b=rp69UJ778Bi94F
	w4+rW9wGY/rue/J4Bi+f3AknaDhG++f5KliyRFiuxh6HbLlnd/hjVzZlMES/PmjaD4DiKrigDNcor
	okam1TfRR4h7nj7f7LpjwKkaTVGiBuzaNOA8pGNNTufhXasLUXg9/X0d0iyn8sJVTFV3TsLEYW1bR
	N2O5UWMP3ORTqIjpyytoouHiSpPL/yjmJA6K2q7NHcq6wsLDvzvFRpORZD3pIsyzDcYRybpbiKqwx
	cRdH5hVhHBush+J1OuiAf1jt58X9eKAAi56i3vLS+WadjbHAqOLnkfdbfsuvVwpgX4YP2ppP6+fAE
	PJTUqDKcw80c/gZh6ndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGFg-0004oB-G0; Wed, 06 Nov 2019 08:01:16 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGFZ-0004la-GJ
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 08:01:10 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA6814Kr008750
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 6 Nov 2019 09:01:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1573027265; bh=LRPoFrvXNw8UJRbZ4fTJbXzM7jRqHf5coSYEPhAlx3M=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=MPKJe9l2dmq1zuJrP7Zc341ZNmAW6GFl9eZXbIUTpxp1hX9ztQKcYj7kLCsbbzoNK
 i/Y+/T1IstvKsM14nItPSAmt0in7WE/O60DTrgTFQ/WKyvgLLejRTs0TDzerVWDASE
 i7ZjAr9XXWGi+Oj9qBCgCXc1oTkO5ke72YDdn668=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iSGFU-0005B7-3q; Wed, 06 Nov 2019 09:01:04 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Paul Spooren <mail@aparcar.org>
Organization: m
References: <20191106002530.3314-1-mail@aparcar.org>
Date: Wed, 06 Nov 2019 09:01:04 +0100
In-Reply-To: <20191106002530.3314-1-mail@aparcar.org> (Paul Spooren's message
 of "Tue, 5 Nov 2019 14:25:30 -1000")
Message-ID: <87v9rxzb5r.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_000109_883144_A3EF8F19 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips,
 mt7520: reproducible elecom-header uid/gid
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

c3ViamVjdCB0eXBvLiAgSSB3YXMgY3VyaW91cyBhYm91dCB0aGF0IG5ldyBjaGlwIDotKQoKCkJq
w7hybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
