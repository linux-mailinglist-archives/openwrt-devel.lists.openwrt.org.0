Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC537170E8A
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 03:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GCIvC6GMvyS8+0MdZSg3/3Sh26RfAosuYpekLfFPl54=; b=qnfRr8uJtqm4gH
	cJn6slS6zbI7KeRx3gLr8JjkjZ6KpNr1dwQ+5pbHYhi2z/Rtdbz1de2NYkT7T0f/1EIGA8rdyE9d4
	SH9igmg5Fp0z8H+2PqEk1wFscZSS4Rc8rffaQcvg4r9QEW+8H1IHUx/rk5skHDY0AjjFsKlYWEOhj
	b4xq9CaZ4OpBoNWru3qMw74yEWU96gLcxi+WB/MZOuJtNLXnm41kq1DkrNRunc45pP88bo5JaBBIK
	HfUt1yN4aTYB1e+3+uLfTReg3h632bec0I3MY35NEkB6JPhgnQwruJ/A0POPYmagfp3OuS/VmFKj4
	idPFkHItd3Q7e7zjGHyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j797O-0000BA-GM; Thu, 27 Feb 2020 02:41:42 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j797E-0000AU-0b
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 02:41:34 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1j7950-0001SG-A4
 for openwrt-devel@openwrt.org; Wed, 26 Feb 2020 21:39:15 -0500
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582771150;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=0bh2C+3HlcpWUVpd2FUO163y4Eg=;
 b=MdmU9gJeCR0fzvMUovlyzXO9OuE7Aiv45+w1/Ab4+B5zN9tbtHADfFh+9qH+AZbs
 gH2hUdxT6R8plsrNHPNOlDCUgl7mYcRcAQ4okWKA3N03BpAOorUHJTbuQfICToMA
 nmfOGfT+qh4cyLF4FqpT5W3GCxpQ714Xzrarb3WPnbWrR87fhXzqHZ9KrpZ6SO2M
 pGC71soAG2iLg4mxvVduciOeBFPAh0aI8sZg5gdBGU8rl7QWs49d6MSNQaxC4I/u
 +0PhRQdIQSpzNX2e5rCvwkg6Z7U7XNsPmpci1wi/zx40bHJZnqkpATRm8c9rIXfr
 n16fBupvBSG0isYt5luILA==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=QLoWuTDL c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=I_5RNyk1AAAA:8 a=jdP34snFAAAA:8 a=uE2tbS4-KPmIbnTb7AcA:9
 a=7tmcSqaZo5YXhhhK:21 a=X3O_7hX04bZYp2X4:21 a=QEXdDO2ut3YA:10
 a=Eh9yxdLE6B1twWrs3SXz:22 a=jlphF6vWLdwq7oh3TaWq:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp01.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:38438] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id C3/6B-01558-CCB275E5; Wed, 26 Feb 2020 21:39:09 -0500
Date: Wed, 26 Feb 2020 18:39:02 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200227023902.GA31471@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Signed-off-by: J. Scott Heppler ramips: add support for
 TRENDnet
 TEW-810DR Exact hardware clone for the D-Link DIR-810L. See OpenWRT device
 pages and review the PCB photos,
 boot logs and MTP flash partitions.
 https://openwrt.org/toh/trendnet/trendnet_tew-810dr_1.0_1.1
 https: [...] 
 Content analysis details:   (-1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
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
X-CRM114-CacheID: sfid-20200226_184132_210914_D028E092 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] ramips: add TRENDnet TEW-810DR support
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

U2lnbmVkLW9mZi1ieTogSi4gU2NvdHQgSGVwcGxlciA8c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ+
CgpyYW1pcHM6IGFkZCBzdXBwb3J0IGZvciBUUkVORG5ldCBURVctODEwRFIKCkV4YWN0IGhhcmR3
YXJlIGNsb25lIGZvciB0aGUgRC1MaW5rIERJUi04MTBMLiAgU2VlIE9wZW5XUlQgZGV2aWNlIHBh
Z2VzCmFuZCByZXZpZXcgdGhlIFBDQiBwaG90b3MsIGJvb3QgbG9ncyBhbmQgTVRQIGZsYXNoIHBh
cnRpdGlvbnMuCmh0dHBzOi8vb3BlbndydC5vcmcvdG9oL3RyZW5kbmV0L3RyZW5kbmV0X3Rldy04
MTBkcl8xLjBfMS4xCmh0dHBzOi8vb3BlbndydC5vcmcvdG9oL2QtbGluay9kaXItODEwbAoKU3Bl
Y2lmaWNhdGlvbjoKCiogTWVkaWFUZWsgTVQ3NjIwQSAoNTgwIE1oeikKKiA4IE1CIG9mIEZMQVNI
CiogNjQgTUIgb2YgUkFNCiogNXggMTAvMTAwIE1icHMgRXRoZXJuZXQgKDEgV0FOIGFuZCA0IExB
TikKKiBVQVJUIGhlYWRlciBvbiBQQ0IgKDU3NjAwIDhuMSkKKiAyeCBCaUNvbG9yIExFRCAoR1BJ
Ty1jb250cm9sbGVkKQoqIDJ4IGJ1dHRvbiAtIHBvd2VyIGFuZCByZXNldAoqIFUtYm9vdCBib290
bG9hZGVyCgpJbnN0YWxsYXRpb246CgpUaGUgc3lzdXBncmFkZS5iaW4gaW1hZ2UgbmVlZHMgdG8g
aGF2ZSBhIGNhbWVvIGhhcmR3YXJlIElEIGFwcGVuZGVkCndpdGggbmNjX2F0dF9od2lkLiAgbmNj
X2F0dF9od2lkIGlzIGF2YWlsYWJsZSBpbiB0aGUgR1BMIFNvdXJjZQpkb3dubG9hZCBmb3IgZWl0
aGVyIHRoZSBURVctODEwRFIgb3IgRElSLTgxMEwgYW5kIGlzIGxvY2F0ZWQgYXQKc291cmNlL3Vz
ZXIvd29sZi9jYW1lby9uY2MvaG9zdFRvb2xzClRoZSBpbnZvY2F0aW9uIGlzOgpuY2NfYXR0X2h3
aWQgLWYgdGV3LTgxMC1zcXVhc2hmcy1mYWN0b3J5LmJpbiAtYSAtbSDigJxURVctODEwRFLigJ0K
LUgg4oCcMS4wUuKAnSAtciDigJxXV+KAnSAtYyDigJwxLjDigJ0KTW9yZSBpbmZvcm1hdGlvbiBp
cyBhdmFpbGFibGUgaW4gdGhlIGRldmljZSBwYWdlIGZvciBURVctODEwRFIgbGlua2VkCmFib3Zl
IFRoZSBhcHBlbmRlZCBpbWFnZSBjYW4gdGhlbiBiZSBmbGFzaCB2aWEgdGhlIFdlYiByZXNjdWUg
aW50ZXJmYWNlCjE5Mi4xNjguMTAuMSBvciBURlRQJ3MgdG8gdGhlIHNhbWUgSVAgYWRkcmVzcy4g
IFN1YnNlcXVlbnQgdXBncmFkZXMKY2FuIGJlIGRvbmUgdXNpbmcgdGhlIEx1Y2kgd2ViIGludGVy
ZmFjZSBvciB0aGUgc3NoIGNvbW1hbmQgbGluZSBwZXIgdGhlCk9wZW5XUlQgZG9jdW1lbnRhdGlv
bgotLS0KIC4uLi9yYW1pcHMvZHRzL210NzYyMGFfdHJlbmRuZXRfdGV3LTgxMGRyLmR0cyB8IDE1
NyArKysrKysrKysrKysrKysrKysKIHRhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1r
ICAgICAgICAgICB8ICAxMCArKwogLi4uL210NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAy
X25ldHdvcmsgIHwgICAzICstCiAzIGZpbGVzIGNoYW5nZWQsIDE2OSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMv
bXQ3NjIwYV90cmVuZG5ldF90ZXctODEwZHIuZHRzCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9kdHMvbXQ3NjIwYV90cmVuZG5ldF90ZXctODEwZHIuZHRzIGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9kdHMvbXQ3NjIwYV90cmVuZG5ldF90ZXctODEwZHIuZHRzCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLmViMzgxMTA4MDEKLS0tIC9kZXYvbnVsbAorKysgYi90
YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX3RyZW5kbmV0X3Rldy04MTBkci5kdHMKQEAg
LTAsMCArMSwxNTcgQEAKKy9kdHMtdjEvOworCisjaW5jbHVkZSAibXQ3NjIwYS5kdHNpIgorCisj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CisjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
aW5wdXQvaW5wdXQuaD4KKworLyB7CisJY29tcGF0aWJsZSA9ICJ0cmVuZG5ldCx0ZXctODEwZHIi
LCAicmFsaW5rLG10NzYyMGEtc29jIjsKKwltb2RlbCA9ICJUUkVORG5ldCBURVctODEwRFIiOwor
CisJYWxpYXNlcyB7CisJCWxlZC1ib290ID0gJmxlZF9wb3dlcl9ncmVlbjsKKwkJbGVkLWZhaWxz
YWZlID0gJmxlZF9wb3dlcl9ncmVlbjsKKwkJbGVkLXJ1bm5pbmcgPSAmbGVkX3Bvd2VyX2dyZWVu
OworCQlsZWQtdXBncmFkZSA9ICZsZWRfcG93ZXJfZ3JlZW47CisJCWxhYmVsLW1hYy1kZXZpY2Ug
PSAmZXRoZXJuZXQ7CisJfTsKKworCWtleXMgeworCQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7
CisKKwkJcmVzZXQgeworCQkJbGFiZWwgPSAicmVzZXQiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDEg
R1BJT19BQ1RJVkVfTE9XPjsKKwkJCWxpbnV4LGNvZGUgPSA8QlROXzA+OworCQl9OworCisJCXdw
cyB7CisJCQlsYWJlbCA9ICJ3cHMiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDIgR1BJT19BQ1RJVkVf
TE9XPjsKKwkJCWxpbnV4LGNvZGUgPSA8QlROXzA+OworCQl9OworCX07CisKKwlsZWRzIHsKKwkJ
Y29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOworCisJCWxlZF9wb3dlcl9ncmVlbjogcG93ZXIgewor
CQkJbGFiZWwgPSAiZGlyLTgxMGw6Z3JlZW46cG93ZXIiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDkg
R1BJT19BQ1RJVkVfSElHSD47CisJCX07CisKKwkJd2FuIHsKKwkJCWxhYmVsID0gImRpci04MTBs
Om9yYW5nZTp3YW4iOworCQkJZ3Bpb3MgPSA8JmdwaW8wIDEyIEdQSU9fQUNUSVZFX0hJR0g+Owor
CQl9OworCisJCXBvd2VyMiB7CisJCQlsYWJlbCA9ICJkaXItODEwbDpvcmFuZ2U6cG93ZXIiOwor
CQkJZ3Bpb3MgPSA8JmdwaW8wIDEzIEdQSU9fQUNUSVZFX0hJR0g+OworCQl9OworCX07Cit9Owor
Cismc3BpMCB7CisJc3RhdHVzID0gIm9rYXkiOworCisJbTI1cDgwQDAgeworCQljb21wYXRpYmxl
ID0gImplZGVjLHNwaS1ub3IiOworCQlyZWcgPSA8MD47CisJCXNwaS1tYXgtZnJlcXVlbmN5ID0g
PDEwMDAwMDAwPjsKKworCQlwYXJ0aXRpb25zIHsKKwkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFy
dGl0aW9ucyI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDE+
OworCisJCQlwYXJ0aXRpb25AMCB7CisJCQkJbGFiZWwgPSAidS1ib290IjsKKwkJCQlyZWcgPSA8
MHgwIDB4MzAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkAzMDAw
MCB7CisJCQkJbGFiZWwgPSAidS1ib290LWVudiI7CisJCQkJcmVnID0gPDB4MzAwMDAgMHgxMDAw
MD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsKKworCQkJZmFjdG9yeTogcGFydGl0aW9uQDQwMDAw
IHsKKwkJCQlsYWJlbCA9ICJmYWN0b3J5IjsKKwkJCQlyZWcgPSA8MHg0MDAwMCAweDEwMDAwPjsK
KwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlmYWN0b3J5NWc6IHBhcnRpdGlvbkA1MDAwMCB7
CisJCQkJbGFiZWwgPSAiZmFjdG9yeTVnIjsKKwkJCQlyZWcgPSA8MHg1MDAwMCAweDEwMDAwPjsK
KwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlwYXJ0aXRpb25ANjAwMDAgeworCQkJCWxhYmVs
ID0gIldvbGZfQ29uZmlnIjsKKwkJCQlyZWcgPSA8MHg2MDAwMCAweDEwMDAwPjsKKwkJCQlyZWFk
LW9ubHk7CisJCQl9OworCisJCQlwYXJ0aXRpb25ANzAwMDAgeworCQkJCWxhYmVsID0gIk15RGxp
bmsiOworCQkJCXJlZyA9IDwweDcwMDAwIDB4ODAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07
CisKKwkJCXBhcnRpdGlvbkBlMDAwMCB7CisJCQkJbGFiZWwgPSAiSmZmczIiOworCQkJCXJlZyA9
IDwweGUwMDAwIDB4ODAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlv
bkAxNzAwMDAgeworCQkJCWNvbXBhdGlibGUgPSAiZGVueCx1aW1hZ2UiOworCQkJCWxhYmVsID0g
ImZpcm13YXJlIjsKKwkJCQlyZWcgPSA8MHgxNzAwMDAgMHg2OTAwMDA+OworCQkJfTsKKwkJfTsK
Kwl9OworfTsKKworJnN0YXRlX2RlZmF1bHQgeworCWdwaW8geworCQlyYWxpbmssZ3JvdXAgPSAi
bWRpbyIsICJyZ21paTEiLCAiaTJjIiwgIndsZWQiLCAidWFydGYiOworCQlyYWxpbmssZnVuY3Rp
b24gPSAiZ3BpbyI7CisJfTsKK307CisKKyZldGhlcm5ldCB7CisJbXRkLW1hYy1hZGRyZXNzID0g
PCZmYWN0b3J5IDB4Mjg+OworCW1lZGlhdGVrLHBvcnRtYXAgPSAibGxsbHciOworfTsKKworJmdz
dyB7CisJbWVkaWF0ZWsscG9ydDQgPSAiZXBoeSI7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKKwlwaW5jdHJsLTAgPSA8JmVwaHlfcGlucz47Cit9OworCismcGNpZSB7CisJc3RhdHVzID0g
Im9rYXkiOworfTsKKworJndtYWMgeworCXJhbGluayxtdGQtZWVwcm9tID0gPCZmYWN0b3J5IDB4
MD47CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAgPSA8JnBhX3BpbnM+
OworCW10ZC1tYWMtYWRkcmVzcyA9IDwmZmFjdG9yeSAweDI4PjsKK307CisKKyZwY2llMCB7CisJ
d2lmaUAwLDAgeworCQlyZWcgPSA8MHgwMDAwIDAgMCAwIDA+OworCQltZWRpYXRlayxtdGQtZWVw
cm9tID0gPCZmYWN0b3J5IDB4ODAwMD47CisJCWllZWU4MDIxMS1mcmVxLWxpbWl0ID0gPDUwMDAw
MDAgNjAwMDAwMD47CisJCW10ZC1tYWMtYWRkcmVzcyA9IDwmZmFjdG9yeSAweDI4PjsKKwkJbXRk
LW1hYy1hZGRyZXNzLWluY3JlbWVudCA9IDwyPjsKKwl9OworfTsKZGlmZiAtLWdpdCBhL3Rhcmdl
dC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFn
ZS9tdDc2MjAubWsKaW5kZXggMzUxMmExYzU1YS4uNzFlNDI3MGEyMCAxMDA2NDQKLS0tIGEvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9pbWFnZS9tdDc2MjAubWsKQEAgLTk0Miw2ICs5NDIsMTYgQEAgZGVmaW5lIERldmljZS90cGxp
bmtfcmUyMDAtdjEKIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSB0cGxpbmtfcmUyMDAtdjEKIAor
ZGVmaW5lIERldmljZS90cmVuZG5ldF90ZXctODEwZHIKKyAgU09DIDo9IG10NzYyMGEKKyAgREVW
SUNFX1BBQ0tBR0VTIDo9IGttb2QtbXQ3NngwZQorICBERVZJQ0VfVkVORE9SIDo9IFRSRU5EbmV0
CisgIERFVklDRV9NT0RFTCA6PSBURVctODEwRFIKKyAgSU1BR0VfU0laRSA6PSA2NzIwaworICBT
VVBQT1JURURfREVWSUNFUyArPSBkaXItODEwbAorZW5kZWYKK1RBUkdFVF9ERVZJQ0VTICs9IHRy
ZW5kbmV0X3Rldy04MTBkcgorCiBkZWZpbmUgRGV2aWNlL3ZvbmV0c192YXIxMW4tMzAwCiAgIFNP
QyA6PSBtdDc2MjBuCiAgIElNQUdFX1NJWkUgOj0gMzc3NmsKZGlmZiAtLWdpdCBhL3RhcmdldC9s
aW51eC9yYW1pcHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayBiL3Rh
cmdldC9saW51eC9yYW1pcHMvbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29y
awppbmRleCA3Mzk3ZGRjYzJjLi5hMWIzZjRiZDBjIDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgv
cmFtaXBzL210NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKKysrIGIvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9tdDc2MjAvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3Jr
CkBAIC0yNTUsNyArMjU1LDggQEAgcmFtaXBzX3NldHVwX21hY3MoKQogCWFsZmEtbmV0d29yayxh
YzEyMDBybXxcCiAJZGxpbmssZGlyLTgxMGx8XAogCXBoaWNvbW0scHNnMTIxOGF8XAotCXBoaWNv
bW0scHNnMTIxOGIpCisJcGhpY29tbSxwc2cxMjE4YnxcCisJdHJlbmRuZXQsdGV3LTgxMGRyKQog
CQl3YW5fbWFjPSQobWFjYWRkcl9hZGQgIiQobXRkX2dldF9tYWNfYmluYXJ5IGZhY3RvcnkgMHgy
OCkiIDEpCiAJCTs7CiAJYWxmYS1uZXR3b3JrLHIzNm0tZTRnfFwKLS0gCjIuMjAuMQoKLS0gCkou
IFNjb3R0IEhlcHBsZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
