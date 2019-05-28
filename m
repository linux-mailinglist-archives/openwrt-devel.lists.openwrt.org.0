Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9F32BCBA
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 03:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t4Cmie2pZzfdLkZN/gbiLChW8nUzZkH4HpYYV19kT0=; b=DejxrDA4wH99C5
	U23vAoTQFPggGbQUb0nA1nRYk+djuSvk0L3uh7XwI3RJLKHMb51ALN4yxFpiW/u31ohY5sgIyrO9I
	o0hKAqXtf5/YUy5+TXFekE3sVNZvbqKAMdiBKSxN1AmRs59dOvlyoMWSP6c4SFqU2P3Wdgs/iEv4J
	+ELXOsY/D6IU6bj4ymAanLb+XzTe67glKG4O9OALnMs6/1Blsdz+nWh4WT3d/Iu+mfcJNjEMdi23S
	G/EPnkW6lElJRYZIpeMQXq+ADwpet65nqk9B21xDa4N7U8tdmuHRQimrYZX1rtvD+f10S+j0bOKmY
	mJSoffarSqrvq+14WK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVQiZ-0005Q9-QD; Tue, 28 May 2019 01:15:55 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVQiT-0005Pp-RG
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 01:15:51 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id AFF91A60E2E; Mon, 27 May 2019 18:15:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id E5284A60DC1;
 Mon, 27 May 2019 18:15:42 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Denis =?utf-8?Q?Peri=C5=A1a?= <darkman.hr@gmail.com>
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
 <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
 <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
 <87imtvu3cl.fsf@husum.klickitat.com>
 <CAC8mBSWfsK+f_8Od3FF1GtQeiZeENJnZAk89ir2Q8OABY7iJkg@mail.gmail.com>
Date: Mon, 27 May 2019 18:15:42 -0700
In-Reply-To: <CAC8mBSWfsK+f_8Od3FF1GtQeiZeENJnZAk89ir2Q8OABY7iJkg@mail.gmail.com>
 ("Denis \=\?utf-8\?Q\?Peri\=C5\=A1a\=22's\?\= message of "Mon,
 27 May 2019 22:23:53 +0200")
Message-ID: <87o93nqszl.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_181549_919159_47D455F0 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Pj4+Pj4gIkRlbmlzIiA9PSBEZW5pcyBQZXJpxaFhIDxkYXJrbWFuLmhyQGdtYWlsLmNvbT4gd3Jp
dGVzOgoKRGVuaXM+IFRoZXJlIGlzIG5vIG90aGVyIGRoY3AgaW4gbmV0d29yaywgaXQncyByb3V0
ZWQgY29ubmVjdGlvbiBSQjQzNUcKRGVuaXM+IHdpdGggbXVsdGlwbGUgY2FyZHMgd2xhbi4gIHRo
aXMgaXMgY29uZmlnIGV4YW1wbGU6CgpEZW5pcz4gaW50ZXJmYWNlPWV0aDAgZXhjZXB0LWludGVy
ZmFjZT1ldGgxIGludGVyZmFjZT13bGFuMwpEZW5pcz4gaW50ZXJmYWNlPXdsYW4wIGludGVyZmFj
ZT13bGFuMSBpbnRlcmZhY2U9d2xhbjIKCkRlbmlzPiBkaGNwLXJhbmdlPTE3Mi4xNy4zLjIwLDE3
Mi4xNy4zLjI1MywyNTUuMjU1LjI1NS4wLDFoCkRlbmlzPiBkaGNwLXJhbmdlPTE3Mi4xNy40LjIw
LDE3Mi4xNy40LjI1MywyNTUuMjU1LjI1NS4wLDFoCkRlbmlzPiBkaGNwLXJhbmdlPTE3Mi4xNy41
LjIwLDE3Mi4xNy41LjI1MywyNTUuMjU1LjI1NS4wLDFoCkRlbmlzPiBkaGNwLXJhbmdlPTE3Mi4x
Ny42LjIwLDE3Mi4xNy42LjI1MywyNTUuMjU1LjI1NS4wLDFoCkRlbmlzPiBkaGNwLXJhbmdlPTE3
Mi4xNy43LjIwLDE3Mi4xNy43LjI1MywyNTUuMjU1LjI1NS4wLDFoCgpGcm9tIGV4cGVyaWVuY2Us
IHNvbWV0aW1lcyB0aGVyZSBhcmUgREhDUCBzZXJ2ZXJzIHlvdSBkb24ndCBrbm93IGFib3V0LgoK
VGhpcyBpcyB3aGF0IEkgc2VlIGluIG15IHRlc3QgYmVkOgoKICAgIyBjYXQgL3Zhci9ldGMvZG5z
bWFzcS5jb25mLmNmZzAxNDExYwoKICAgIyBhdXRvLWdlbmVyYXRlZCBjb25maWcgZmlsZSBmcm9t
IC9ldGMvY29uZmlnL2RoY3AKICAgY29uZi1maWxlPS9ldGMvZG5zbWFzcS5jb25mCiAgIGRoY3At
YXV0aG9yaXRhdGl2ZQogICByZWFkLWV0aGVycwogICBlbmFibGUtdWJ1cwogICBiaW5kLWR5bmFt
aWMKICAgbG9jYWwtc2VydmljZQogICBkb21haW49bG9jYWxuZXQKICAgc2VydmVyPS9sYW4vCiAg
IGV4Y2VwdC1pbnRlcmZhY2U9ZXRoMQogICBkaGNwLWxlYXNlZmlsZT0vdG1wL2RoY3AubGVhc2Vz
CiAgIHJlc29sdi1maWxlPS90bXAvcmVzb2x2LmNvbmYuYXV0bwogICBkaGNwLWJyb2FkY2FzdD10
YWc6bmVlZHMtYnJvYWRjYXN0CiAgIGFkZG4taG9zdHM9L3RtcC9ob3N0cwogICBjb25mLWRpcj0v
dG1wL2Ruc21hc3EuZAogICB1c2VyPWRuc21hc3EKICAgZ3JvdXA9ZG5zbWFzcQoKCiAgIGRoY3At
aWdub3JlLW5hbWVzPXRhZzpkaGNwX2JvZ3VzX2hvc3RuYW1lCiAgIGNvbmYtZmlsZT0vdXNyL3No
YXJlL2Ruc21hc3EvZGhjcGJvZ3VzaG9zdG5hbWUuY29uZgoKCiAgIGRoY3AtcmFuZ2U9c2V0OnB1
YiwxMC4xMS4yNC41LDEwLjExLjI0LjMwLDI1NS4yNTUuMjU1LjIyNCwxaAogICBuby1kaGNwLWlu
dGVyZmFjZT1ldGgxCiAgIGRoY3AtcmFuZ2U9c2V0OnByaXYsMTkyLjE2OC4xMS4xMDAsMTkyLjE2
OC4xMS4yNDksMjU1LjI1NS4yNTUuMCwxMmgKClRyeSB0dXJuaW5nIG9uIHRoZSBmb3JjZSBvcHRp
b24uCgoKLS0gClJ1c3NlbGwgU2VuaW9yLCBQcmVzaWRlbnQKcnVzc2VsbEBwZXJzb25hbHRlbGNv
Lm5ldAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
