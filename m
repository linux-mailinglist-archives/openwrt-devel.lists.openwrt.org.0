Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6782B1A10A2
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 17:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUddyXPnmR6rfPZY5KCDKkSH1uT1W6Jd8xBOv7Un5us=; b=sruweeJ1WovNyp
	vrcR91GVWmFi2EJ82SQaN2cihk4hZX5ACoHXGT3kv1OApoqT1akgqiv//hugUMciM9Aoi0h0BvD7F
	g05dYVr3ZtrN2rLEIm/fOI0Ziu/yfGr3146NmWuOEJ6ehIKSxYBI+w+5igw9Job5Xt+eVJ5lR/xXj
	zC+gZslQqNgRQrmbK1pxXmBjKCS9LEhIN1vfwatoyz9ptRgYbsG65PsIK5lfvkdTSbCiWosut5w3P
	IsCQOEsTaGxTPeije4OUkcPkB7H5td28I0IloWJ6rh2c44CNR6RtulpJDqh4yDBn7mTTjKEEZtJdq
	n7rC+nCbRV3A9/22Se2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqTf-0007Vl-AI; Tue, 07 Apr 2020 15:49:27 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqTW-0007VK-7h
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 15:49:19 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 037FnGnP016808
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 7 Apr 2020 17:49:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586274556; bh=bTFt6w/09leowWM2hXxQ3QLAHfw4cQP4GBGiNYVdc2g=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=neDSZQhFJXFVinMzsOZRzl4HzCveic5TVncrib8XOoaj1IcEbUcJmolrpxFK0HYpu
 8I+bKw2PHlw8eQC6665OEkCobihRE8n72yszH/Ynn94grKp6gnUUVIaKVXFwKhBSyv
 QCQ6fs5XUthTryhz4KhJT4qRSBe4ArurjoazVESM=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jLqTU-0002hJ-55; Tue, 07 Apr 2020 17:49:16 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Andre Valentin <avalentin@marcant.net>
Organization: m
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <878sj7s6uj.fsf@miraculix.mork.no>
 <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net>
Date: Tue, 07 Apr 2020 17:49:16 +0200
In-Reply-To: <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net> (Andre
 Valentin's message of "Tue, 7 Apr 2020 17:13:26 +0200")
Message-ID: <87lfn7qosj.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_084918_605769_D4EB25DE 
X-CRM114-Status: UNSURE (   5.72  )
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

SnVzdCByZW1lbWJlcmVkIGFuIGlzc3VlIG9uIG15IHRvZG8gbGlzdDogVGhlcmUgaGF2ZSBiZWVu
IHNvbWUgTVRVCmhhbmRsaW5nIGNoYW5nZXMgaW4gdGhlIGtlcm5lbCBuZXR3b3JraW5nIEFQSS4g
IFRoaXMgYWZmZWN0ZWQgdGhlCnFtaV93d2FuIFFNQVAgaGFuZGxpbmcuICBJIGFtIG5vdCBzdXJl
IGFib3V0IHRoZSBjdXJyZW50IHN0YXR1cy4gIFdpbGwKaGF2ZSB0byBkaWcgYSBiaXQgbW9yZS4g
IEJ1dCB0aGlzIG1pZ2h0IGJlIHlvdXIgcHJvYmxlbS4KCgoKQmrDuHJuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
