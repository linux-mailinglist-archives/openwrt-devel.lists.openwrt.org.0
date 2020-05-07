Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7381C95E8
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 18:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O7uozp61waFtaILf11alvjfcggLlPs0cI8lPmfaGdzw=; b=AW7pY3EfLNi0pd
	hbHrs520TmwLzOcrCB1jNX6HXti9SAMo0M1Qm1jXf3jWeQ0+j4g9ZMHCrmB6wuNI43z+NrykhhGnM
	MEyeWnk5v8m6iID/2NoF5SQ9HgJ0bjmng6v9/rWdbxHkWR03QRaG6H3lxzAkNRTHo/at8lpDgOZ2h
	dIHl6BSb9psS/4d+oD6VTcEaOsuTFKSithZ1JgV9V/iaNjtncSkiC71skU6ZwYu5dzum5oSUGmqVG
	cFeze/GdP6domFFs4AdhZU9yaWeFO/fR0BrTsO4/q1s61cOs2LPeXbmXIMqc5l9IVQ4nyJh/Dq9xd
	BANfGxjABwE3DV5vOW8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWj02-0007TY-JV; Thu, 07 May 2020 16:03:50 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWizv-0007PK-5S
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 16:03:45 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net) by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jWizc-0004tY-2G
 for openwrt-devel@openwrt.org; Thu, 07 May 2020 12:03:25 -0400
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1588867401;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=QdN0agTI8CIFNTfiWEJGcD1ewOM=;
 b=f5d4rLxtMGgg5AgqwrTsWh6s7hBgEFxnxrp0Rs2NqmdoIk1xcgdMrrGvhDArnhze
 mLO2kVGaUQ3NIV1ouk7dXBX1qdiJMwif4cP6RAv0EkNHwsU8FF2Q80bIoh2Alu8E
 ZbGt8I684ekKos+aVSfTRBdk8s7xJqHHXfmOIlF8wmVAD540kJLOWNvFopYOz20o
 utsnM0o4vtGLcvcB5CkH+vSMAr3waOvPxqJMurNA+7CxYbpCu6h6mjhN37u11GZU
 smPIL/qKhqiFgPUAtnmqpdGe8iKMPXY1H9S64n91HuoSAzGrnMwjSLf//lOyimzG
 lbEyO6FnnCwlLjCZi8IpNQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=G8pi7Os5 c=1 sm=1 tr=0
 a=OSsl9/196MxzRSbOzWpbVA==:117 a=OSsl9/196MxzRSbOzWpbVA==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=sTwFKg_x9MkA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=jdP34snFAAAA:8 a=lXebxUF823kOwXoL-pYA:9
 a=5BF6IvmwplNzpIIZ:21 a=_qRneq_SzobM8Hxd:21 a=QEXdDO2ut3YA:10
 a=jlphF6vWLdwq7oh3TaWq:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp02.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.3.225] ([71.32.3.225:40270] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 7C/65-29715-84134BE5; Thu, 07 May 2020 12:03:21 -0400
Date: Thu, 7 May 2020 09:03:14 -0700
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200507160314.GA2941@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Information for reviewers: By report, FCCid and board photos,
 this device shares a Cameo manufactured board with the D-Link DIR-810L. The
 DIR-810L dts does not enable GPIO40 for the Green Internet/Glo [...] 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mt7620.mk]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_090343_660552_768404C9 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4] ramips: add support for TRENDnet
 TEW-810DR
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW5mb3JtYXRpb24gZm9yIHJldmlld2VyczoKQnkgcmVwb3J0LCBGQ0NpZCBhbmQgYm9hcmQgcGhv
dG9zLCB0aGlzIGRldmljZSBzaGFyZXMgYSBDYW1lbyBtYW51ZmFjdHVyZWQKYm9hcmQgd2l0aCB0
aGUgRC1MaW5rIERJUi04MTBMLiAgVGhlIERJUi04MTBMIGR0cyBkb2VzIG5vdCBlbmFibGUgR1BJ
TzQwIGZvcgp0aGUgR3JlZW4gSW50ZXJuZXQvR2xvYmUgbGFuIGxlZC4gVGhlIFRFVy04MTBEUiBk
dHMgc2hvdWxkIGJlIGFwcGxpY2FibGUgdG8gdGhlCkRJUi04MTBMIGFuZCB3b3VsZCBwcm92aWRl
IGltcHJvdmVkIEdyZWVuIEludGVybmV0L0dsb2JlIGxhbiBsZWQKY29uZmlndXJhYmlsaXR5LiAg
SSBiZWxpZXZlIHRoYXQgaXQgd291bGQgYmUgZWZmaWNpZW50IHRvIHRlc3QgdGhlIHBvdGVudGlh
bApESVItODEwTCBjaGFuZ2VzIHByaW9yIHRvIGdlbmVyYXRpbmcgYSAqLmR0c2kuICBJIGRvIG5v
dCBoYXZlIGEgRElSLTgxMEwgdG8KdGVzdC4gIEkgYWxzbyByZXZlcnRlZCB0aGUgc3BpLW1heC1m
cmVxdWVuY3kgdG8gPDEwMDAwMDAwPiBiYXNlZCBvbiBhIGZvcnVtCnJlcG9ydCBvZiBpbnN0YWJp
bGl0eS4gIEZvcnVtIGxpbmtzIGRldGFpbGluZyBkZXZlbG9wbWVudDoKaHR0cHM6Ly9mb3J1bS5v
cGVud3J0Lm9yZy90L3RyZW5kbmV0LXRldy04MTBkci1sZWRzLzU2NjAxCmh0dHBzOi8vZm9ydW0u
b3BlbndydC5vcmcvdC90cmVuZG5ldC10ZXctODEwZHItbXRkLXBhcnRpdGlvbi81OTY3NgoKQ2hh
bmdlcyB0byBiZSBjb21taXR0ZWQ6CgluZXcgZmlsZTogICB0YXJnZXQvbGludXgvcmFtaXBzL2R0
cy9tdDc2MjBhX3RyZW5kbmV0X3Rldy04MTBkci5kdHMKCW1vZGlmaWVkOiAgIHRhcmdldC9saW51
eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rCgltb2RpZmllZDogICB0YXJnZXQvbGludXgvcmFtaXBz
L210NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMKCW1vZGlmaWVkOiAgIHRhcmdl
dC9saW51eC9yYW1pcHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawoK
U3BlY2lmaWNhdGlvbjoKCiogTWVkaWFUZWsgTVQ3NjIwQSAoNTgwIE1oeikKKiA4IE1CIG9mIEZM
QVNICiogNjQgTUIgb2YgUkFNCiogMi40R2h6IGFuZCA1LjBHaHogcmFkaW9zIGZ1bmN0aW9uYWwK
KiA1eCAxMC8xMDAgTWJwcyBFdGhlcm5ldCAoMSBXQU4gYW5kIDQgTEFOKQoqIFVBUlQgaGVhZGVy
IG9uIFBDQiAoNTc2MDAgOG4xKQoqIEdyZWVuL09yYW5nZSBQb3dlciBMRURzIGlsbHVtaW5hdGlu
ZyBhIFBvd2VyLUJ1dHRvbiBMZW5zCiAgR3JlZW4vT3JhbmdlIEludGVybmV0IExFRHMgR1BJTyBj
b250cm9sbGVkIGlsbHVtaW5hdGluZyBhIEdsb2JlL0ludGVybmV0IExlbnMKKiAzeCBidXR0b24g
LSB3cHMsIHBvd2VyIGFuZCByZXNldAoqIFUtYm9vdCBib290bG9hZGVyCgpJbnN0YWxsYXRpb246
CgpUaGUgc3lzdXBncmFkZS5iaW4gaW1hZ2UgaXMgcmVwb3J0ZWQgdG8gYmUgT0VNIHdlYiBmbGFz
aGVkIHdpdGggYW4gbmNjX2F0dF9od2lkCmFwcGVuZGVkLiAgbmNjX2F0dF9od2lkIGlzIGF2YWls
YWJsZSBpbiB0aGUgR1BMIFNvdXJjZSBkb3dubG9hZCBmb3IgZWl0aGVyIHRoZQpURVctODEwRFIg
b3IgRElSLTgxMEwgYW5kIGlzIGxvY2F0ZWQgYXQgc291cmNlL3VzZXIvd29sZi9jYW1lby9uY2Mv
aG9zdFRvb2xzLgpJbiBEZWJpYW4gMTAgYW1kNjQsIDMyYml0IGxpYnMgYXJlIG5lZWRlZC4gIFRo
ZSBpbnZvY2F0aW9uIGlzOgpuY2NfYXR0X2h3aWQgLWYgdGV3LTgxMC1zcXVhc2hmcy1mYWN0b3J5
LmJpbiAtYSAtbSDigJxURVctODEwRFLigJ0gLUgg4oCcMS4wUuKAnSAtcgrigJxXV+KAnSAtYyDi
gJwxLjDigJ0uICBUaGlzIG1heSBuZWVkIHRvIGJlIGFsdGVyZWQgaWYgeW91ciBoYXJkd2FyZSB2
ZXJzaW9uIGlzICIxLjFSIi4KTW9yZSBpbmZvcm1hdGlvbiBpcyBhdmFpbGFibGUgaW4gdGhlIGRl
dmljZSBwYWdlIGZvciBURVctODEwRFIuICBTZWUgdGhlIGRldmljZQpwYWdlcyBmb3IgdGhlIERJ
Ui04MTBMIGFuZCBURVctODEwRFIgZm9yIG1vcmUgaW5mb3JtYXRpb24uICBUaGUgaW1hZ2UgY2Fu
IGFsc28KYmUgcmVsaWFibGUgZmxhc2hlZCB2aWEgdGZ0cGJvb3QgYXMgZGVzY3JpYmVkIGluIHRo
aXMgT3BlbldydCBmb3J1bQp0aHJlYWQ6Cmh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC90cmVu
ZG5ldC10ZXctODEwZHItbXRkLXBhcnRpdGlvbi81OTY3Ni4KLS0tCiAuLi4vcmFtaXBzL2R0cy9t
dDc2MjBhX3RyZW5kbmV0X3Rldy04MTBkci5kdHMgfCAxNjYgKysrKysrKysrKysrKysrKysrCiB0
YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMC5tayAgICAgICAgICAgfCAgMTAgKysKIC4u
Li9tdDc2MjAvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzICAgICB8ICAgMyArCiAuLi4v
bXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayAgfCAgIDQgKy0KIDQgZmls
ZXMgY2hhbmdlZCwgMTgyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCB0YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX3RyZW5kbmV0X3Rldy04MTBk
ci5kdHMKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX3RyZW5k
bmV0X3Rldy04MTBkci5kdHMgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX3RyZW5k
bmV0X3Rldy04MTBkci5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4u
Y2JhNjQ2Zjc2ZQotLS0gL2Rldi9udWxsCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210
NzYyMGFfdHJlbmRuZXRfdGV3LTgxMGRyLmR0cwpAQCAtMCwwICsxLDE2NiBAQAorL2R0cy12MS87
CisKKyNpbmNsdWRlICJtdDc2MjBhLmR0c2kiCisKKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlv
L2dwaW8uaD4KKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgorCisvIHsKKwlj
b21wYXRpYmxlID0gInRyZW5kbmV0LHRldy04MTBkciIsICJyYWxpbmssbXQ3NjIwYS1zb2MiOwor
CW1vZGVsID0gIlRSRU5EbmV0IFRFVy04MTBEUiI7CisKKwlhbGlhc2VzIHsKKwkJbGVkLWJvb3Qg
PSAmbGVkX3Bvd2VyX2dyZWVuOworCQlsZWQtZmFpbHNhZmUgPSAmbGVkX3Bvd2VyX2dyZWVuOwor
CQlsZWQtcnVubmluZyA9ICZsZWRfcG93ZXJfZ3JlZW47CisJCWxlZC11cGdyYWRlID0gJmxlZF9w
b3dlcl9ncmVlbjsKKwkJbGFiZWwtbWFjLWRldmljZSA9ICZldGhlcm5ldDsKKwl9OworCisJa2V5
cyB7CisJCWNvbXBhdGlibGUgPSAiZ3Bpby1rZXlzLXBvbGxlZCI7CisJCXBvbGwtaW50ZXJ2YWwg
PSA8MjA+OworCisJCXJlc2V0IHsKKwkJCWxhYmVsID0gInJlc2V0IjsKKwkJCWdwaW9zID0gPCZn
cGlvMCAxIEdQSU9fQUNUSVZFX0xPVz47CisJCQlsaW51eCxjb2RlID0gPEtFWV9SRVNUQVJUPjsK
KwkJfTsKKworCQl3cHMgeworCQkJbGFiZWwgPSAid3BzIjsKKwkJCWdwaW9zID0gPCZncGlvMCAy
IEdQSU9fQUNUSVZFX0xPVz47CisJCQlsaW51eCxjb2RlID0gPEtFWV9XUFNfQlVUVE9OPjsKKwkJ
fTsKKwl9OworCisJbGVkcyB7CisJCWNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKKworCQlsZWRf
cG93ZXJfZ3JlZW46IHBvd2VyX2dyZWVuIHsKKwkJCWxhYmVsID0gInRldy04MTBkcjpncmVlbjpw
b3dlciI7CisJCQlncGlvcyA9IDwmZ3BpbzAgOSBHUElPX0FDVElWRV9ISUdIPjsKKwkJfTsKKwor
CQl3YW4geworCQkJbGFiZWwgPSAidGV3LTgxMGRyOm9yYW5nZTp3YW4iOworCQkJZ3Bpb3MgPSA8
JmdwaW8wIDEyIEdQSU9fQUNUSVZFX0hJR0g+OworCQl9OworCisJCWxhbiB7CisJCQlsYWJlbCA9
ICJ0ZXctODEwZHI6Z3JlZW46bGFuIjsKKwkJCWdwaW9zID0gPCZncGlvMiAwIEdQSU9fQUNUSVZF
X0xPVz47CisJCX07CisKKwkJcG93ZXJfb3JhbmdlIHsKKwkJCWxhYmVsID0gInRldy04MTBkcjpv
cmFuZ2U6cG93ZXIiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDEzIEdQSU9fQUNUSVZFX0hJR0g+Owor
CQl9OworCX07Cit9OworCismc3BpMCB7CisJc3RhdHVzID0gIm9rYXkiOworCisJZmxhc2hAMCB7
CisJCWNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7CisJCXJlZyA9IDwwPjsKKwkJc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MTAwMDAwMDA+OworCisJCXBhcnRpdGlvbnMgeworCQkJY29tcGF0aWJs
ZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3Np
emUtY2VsbHMgPSA8MT47CisKKwkJCXBhcnRpdGlvbkAwIHsKKwkJCQlsYWJlbCA9ICJ1LWJvb3Qi
OworCQkJCXJlZyA9IDwweDAgMHgzMDAwMD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsKKworCQkJ
cGFydGl0aW9uQDMwMDAwIHsKKwkJCQlsYWJlbCA9ICJ1LWJvb3QtZW52IjsKKwkJCQlyZWcgPSA8
MHgzMDAwMCAweDEwMDAwPjsKKwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlmYWN0b3J5OiBw
YXJ0aXRpb25ANDAwMDAgeworCQkJCWxhYmVsID0gImZhY3RvcnkiOworCQkJCXJlZyA9IDwweDQw
MDAwIDB4MTAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCWZhY3Rvcnk1ZzogcGFy
dGl0aW9uQDUwMDAwIHsKKwkJCQlsYWJlbCA9ICJmYWN0b3J5NWciOworCQkJCXJlZyA9IDwweDUw
MDAwIDB4MTAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA2MDAw
MCB7CisJCQkJbGFiZWwgPSAiV29sZl9Db25maWciOworCQkJCXJlZyA9IDwweDYwMDAwIDB4MTAw
MDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA3MDAwMCB7CisJCQkJ
bGFiZWwgPSAiTXlEbGluayI7CisJCQkJcmVnID0gPDB4NzAwMDAgMHg4MDAwMD47CisJCQkJcmVh
ZC1vbmx5OworCQkJfTsKKworCQkJcGFydGl0aW9uQGUwMDAwIHsKKwkJCQlsYWJlbCA9ICJKZmZz
MiI7CisJCQkJcmVnID0gPDB4ZjAwMDAgMHg4MDAwMD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsK
KworCQkJcGFydGl0aW9uQDE3MDAwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJkZW54LHVpbWFnZSI7
CisJCQkJbGFiZWwgPSAiZmlybXdhcmUiOworCQkJCXJlZyA9IDwweDE3MDAwMCAweDY5MDAwMD47
CisJCQl9OworCQl9OworCX07Cit9OworCismc3RhdGVfZGVmYXVsdCB7CisJZ3BpbyB7CisJCWdy
b3VwcyA9ICJtZGlvIiwgInJnbWlpMSIsICJpMmMiLCAid2xlZCIsICJ1YXJ0ZiIsICJlcGh5IjsK
KwkJZnVuY3Rpb24gPSAiZ3BpbyI7CisJfTsKK307CisKKyZldGhlcm5ldCB7CisJbXRkLW1hYy1h
ZGRyZXNzID0gPCZmYWN0b3J5IDB4Mjg+OworCW1lZGlhdGVrLHBvcnRtYXAgPSAibGxsbHciOwor
fTsKKworJmdzdyB7CisJbWVkaWF0ZWsscG9ydDQgPSAiZXBoeSI7Cit9OworCismcGNpZSB7CisJ
c3RhdHVzID0gIm9rYXkiOworfTsKKworJndtYWMgeworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7CisJcGluY3RybC0wID0gPCZwYV9waW5zPjsKKworICAgICAgICByYWxpbmssbXRkLWVlcHJv
bSA9IDwmZmFjdG9yeSAweDA+OworCW10ZC1tYWMtYWRkcmVzcyA9IDwmZmFjdG9yeSAweDI4PjsK
K307CisKKyZwY2llMCB7CisJd2lmaUAwLDAgeworCQlyZWcgPSA8MHgwMDAwIDAgMCAwIDA+Owor
CQltZWRpYXRlayxtdGQtZWVwcm9tID0gPCZmYWN0b3J5IDB4ODAwMD47CisJCWllZWU4MDIxMS1m
cmVxLWxpbWl0ID0gPDUwMDAwMDAgNjAwMDAwMD47CisJCW10ZC1tYWMtYWRkcmVzcyA9IDwmZmFj
dG9yeSAweDI4PjsKKwkJbXRkLW1hYy1hZGRyZXNzLWluY3JlbWVudCA9IDwyPjsKKwl9OworfTsK
KworJmdwaW8yIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsgYi90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210
NzYyMC5tawppbmRleCA2OWI5YjdkN2ZkLi43NGFjYzVhZTJkIDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvcmFtaXBzL2ltYWdlL210NzYyMC5taworKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2lt
YWdlL210NzYyMC5tawpAQCAtOTgxLDYgKzk4MSwxNiBAQCBkZWZpbmUgRGV2aWNlL3RwbGlua19y
ZTIxMC12MQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHRwbGlua19yZTIxMC12MQogCitkZWZp
bmUgRGV2aWNlL3RyZW5kbmV0X3Rldy04MTBkcgorICBTT0MgOj0gbXQ3NjIwYQorICBERVZJQ0Vf
UEFDS0FHRVMgOj0ga21vZC1tdDc2eDBlCisgIERFVklDRV9WRU5ET1IgOj0gVFJFTkRuZXQKKyAg
REVWSUNFX01PREVMIDo9IFRFVy04MTBEUgorICBJTUFHRV9TSVpFIDo9IDY3MjBrCisgIFNVUFBP
UlRFRF9ERVZJQ0VTICs9IHRldy04MTBkcgorZW5kZWYKK1RBUkdFVF9ERVZJQ0VTICs9IHRyZW5k
bmV0X3Rldy04MTBkcgorCiBkZWZpbmUgRGV2aWNlL3ZvbmV0c192YXIxMW4tMzAwCiAgIFNPQyA6
PSBtdDc2MjBuCiAgIElNQUdFX1NJWkUgOj0gMzc3NmsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9yYW1pcHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcyBiL3RhcmdldC9s
aW51eC9yYW1pcHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwppbmRleCBk
MzMyZTAyYmJkLi5jZmU1ZWQ0NDE4IDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL210
NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMKKysrIGIvdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9tdDc2MjAvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzCkBAIC0xOTIsNiArMTky
LDkgQEAgdHBsaW5rLGFyY2hlci1tcjIwMCkKIHRwbGluayxyZTIwMC12MSkKIAl1Y2lkZWZfc2V0
X2xlZF9uZXRkZXYgImxhbiIgImxhbiIgIiRib2FyZG5hbWU6Z3JlZW46bGFuIiAiZXRoMCIKIAk7
OwordHJlbmRuZXQsdGV3LTgxMGRyKQorICAgICAgICB1Y2lkZWZfc2V0X2xlZF9uZXRkZXYgImxh
biIgImxhbiIgIiRib2FyZG5hbWU6Z3JlZW46bGFuIiAiYnItbGFuIiAibGluayB0eCByeCIKKyAg
ICAgICAgOzsKIHlvdWt1LHlrMSkKIAlzZXRfd2lmaV9sZWQgIiRib2FyZG5hbWU6Ymx1ZTphaXIi
CiAJdWNpZGVmX3NldF9sZWRfc3dpdGNoICJ3YW4iICJ3YW4iICIkYm9hcmRuYW1lOmJsdWU6d2Fu
IiAic3dpdGNoMCIgIjB4MTAiCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL210NzYy
MC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgYi90YXJnZXQvbGludXgvcmFtaXBz
L210NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggOGFlNTBiM2Rm
NS4uMTlmMDJiZTQzOCAxMDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjAvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMv
bXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawpAQCAtMjIsNiArMjIsNyBA
QCByYW1pcHNfc2V0dXBfaW50ZXJmYWNlcygpCiAJcGxhbmV4LGRiLXdydDAxfFwKIAlwbGFuZXgs
bXprLTc1MGRocHxcCiAJc2FubGlua2luZyxkMjQwfFwKKwl0cmVuZG5ldCx0ZXctODEwZHJ8XAog
CXlvdWt1LHlrMXxcCiAJemJ0bGluayx6YnQtYXBlNTIyaWl8XAogCXpidGxpbmssemJ0LXdlODI2
LTE2bXxcCkBAIC0yNjEsNyArMjYyLDggQEAgcmFtaXBzX3NldHVwX21hY3MoKQogCWFsZmEtbmV0
d29yayxhYzEyMDBybXxcCiAJZGxpbmssZGlyLTgxMGx8XAogCXBoaWNvbW0scHNnMTIxOGF8XAot
CXBoaWNvbW0scHNnMTIxOGIpCisJcGhpY29tbSxwc2cxMjE4YnxcCisJdHJlbmRuZXQsdGV3LTgx
MGRyKQogCQl3YW5fbWFjPSQobWFjYWRkcl9hZGQgIiQobXRkX2dldF9tYWNfYmluYXJ5IGZhY3Rv
cnkgMHgyOCkiIDEpCiAJCTs7CiAJYWxmYS1uZXR3b3JrLHIzNm0tZTRnfFwKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
