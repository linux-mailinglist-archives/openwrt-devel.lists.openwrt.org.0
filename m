Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3DF12CB22
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 23:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HS3CpjRmvCAv6lhBAPVZe2d3xWdOP6fhufMp02d9vwo=; b=gOU6SJJmvH5NxK8L7ff2KFvDko
	NL/JJb2SgB1MjfTDVZhJdoG/nUu+f9CsfefYaDpU0jQNe9gq9T0M9VVxssISXUV+L96vC8fTpDNoC
	rJXTV5XOau+/8UDHoY7H4X+VHEj2+/IgOcOfLGaoI0MkJUkYxHL0KuilS62MnbN34eoRzW4gYHsDq
	kHpwVs/EuVubWrrNP15wlTpx6yTSn+dK1F3bVQM6hkE9RMw2uXDFyRUPmO4mFKt6QIco2TmkVqH1H
	MZ4zBIlNO4/NTCBdGfUxY677T8gH647i+75eOQeClcVs5prFvTnmpG7h2ROzJP3MK6SnoHlobrtgJ
	4Co/Nxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilgwY-0005UH-1X; Sun, 29 Dec 2019 22:21:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilgwN-0005Tr-I1
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 22:21:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 62365459C;
 Sun, 29 Dec 2019 23:21:34 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 60c86e3c;
 Sun, 29 Dec 2019 23:21:23 +0100 (CET)
Date: Sun, 29 Dec 2019 23:21:23 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20191229222123.GH70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_142139_898709_9C0B3C31 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgdmlhIG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmc+IFsyMDE5LTEyLTI5IDExOjQ5OjM2XToKCkhpLAoKdGhhbmtzIGZvciByZXBvcnRpbmcg
aXQgYW5kIHNvcnJ5IGZvciB0aGUgYnJlYWthZ2UuCgo+IFJlYWRpbmcgcGFydGl0aW9uIHRhYmxl
IGZyb20gYm9vdGRpc2suLi4KPiBSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGltYWdlLi4u
Cj4gU2F2aW5nIGNvbmZpZyBmaWxlcy4uLgo+IENvbW1lbmNpbmcgdXBncmFkZS4gQ2xvc2luZyBh
bGwgc2hlbGwgc2Vzc2lvbnMuCj4gewo+IAkiZXJyb3IiOiB7Cj4gCQkibWVzc2FnZSI6ICJGaXJt
d2FyZSBpbWFnZSBjb3VsZG4ndCBiZSB2YWxpZGF0ZWQiCj4gCX0KPiB9Cj4gQ29tbWFuZCBmYWls
ZWQ6IFVua25vd24gZXJyb3IKCkFsdGhvdWdoIEkgZG9udCBvd24gUlBpNCAob3IgYW55dGhpbmcg
ZWxzZSB3aXRoIENvcnRleC1BNzIpLCBJJ3ZlIGp1c3QgdHJpZWQgdG8KcmVwcm9kdWNlIGl0IG9u
IHg4Ni82NCBRRU1VIGFzIGl0IHNob3VsZCBiZSBwb29yIG1hbidzICJzaW1pbGFyIGVub3VnaCIg
dGFyZ2V0Cig2NC1iaXQvbGl0dGxlIGVuZGlhbiksIGJ1dCBJJ3ZlIGZhaWxlZCB0byByZXByb2R1
Y2UgaXQgd2l0aCBmb2xsb3dpbmcgc3RlcHM6CgogMS4gSSd2ZSBjb3BpZWQgdGFyZ2V0L2xpbnV4
L2JyY20yNzA4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggdG8KICAgIHRhcmdl
dC9saW51eC94ODYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCBpbiBvcmRlciB0
byBnZXQgc2FtZQogICAgc3lzdXBncmFkZSBmdW5jdGlvbmFsaXR5IG9mIHJwaS00IG9uIHg4Ni82
NAogMi4gYnVpbGQgaW1hZ2UgYW5kIHJ1biBpdCBpbiBRRU1VCiAzLiBpbnNpZGUgUUVNVSBJIGRp
ZCBmb2xsb3dpbmc6CgogIC4uLiBzbmlwIC4uLgogIE9wZW5XcnQgU05BUFNIT1QsIHIxMTgyOSsx
LWUzZTkzOWQ4ZTYyNCAodGhhdCArMSBjb21taXQgaXMgbXkgbG9jYWwgQ0kgc3RhZ2luZyB0cmVl
IGJ1aWxkIGNvbW1pdFsxXSkKICAuLi4gc25pcCAuLi4KCiAgcm9vdEBPcGVuV3J0Oi8jIHN5c3Vw
Z3JhZGUgaHR0cDovL2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9zbmFwc2hvdHMvdGFyZ2V0cy9icmNt
MjcwOC9iY20yNzExL29wZW53cnQtYnJjbTI3MDgtYmNtMjcxMS1ycGktNC1zcXVhc2hmcy1zeXN1
cGdyYWRlLmltZy5negogIERvd25sb2FkaW5nICdodHRwOi8vZG93bmxvYWRzLm9wZW53cnQub3Jn
L3NuYXBzaG90cy90YXJnZXRzL2JyY20yNzA4L2JjbTI3MTEvb3BlbndydC1icmNtMjcwOC1iY20y
NzExLXJwaS00LXNxdWFzaGZzLXN5c3VwZ3JhZGUuaW1nLmd6JwogIENvbm5lY3RpbmcgdG8gMTc2
LjkuNDguNzM6ODAKICBXcml0aW5nIHRvICcvdG1wL3N5c3VwZ3JhZGUuaW1nJwogIC90bXAvc3lz
dXBncmFkZS5pbWcgIDEwMCUgfCoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKip8IDEyMDY3
ayAgMDowMDowMCBFVEEKICBEb3dubG9hZCBjb21wbGV0ZWQgKDEyMzU3MDI3IGJ5dGVzKQogIERl
dmljZSBxZW11LXN0YW5kYXJkLXBjLWk0NDBmeC1waWl4LTE5OTYgbm90IHN1cHBvcnRlZCBieSB0
aGlzIGltYWdlCiAgU3VwcG9ydGVkIGRldmljZXM6IHJhc3BiZXJyeXBpLDQtbW9kZWwtYgogIFJl
YWRpbmcgcGFydGl0aW9uIHRhYmxlIGZyb20gYm9vdGRpc2suLi4KICB6Y2F0OiB3cml0ZSBlcnJv
cjogQnJva2VuIHBpcGUKICB6Y2F0OiB3cml0ZTogQnJva2VuIHBpcGUKICBSZWFkaW5nIHBhcnRp
dGlvbiB0YWJsZSBmcm9tIGltYWdlLi4uCiAgUGFydGl0aW9uIGxheW91dCBoYXMgY2hhbmdlZC4g
RnVsbCBpbWFnZSB3aWxsIGJlIHdyaXR0ZW4uCiAgSW1hZ2UgY2hlY2sgZmFpbGVkLgoKICByb290
QE9wZW5XcnQ6LyMgY2F0IC90bXAvc3lzdXBncmFkZS5tZXRhIAogIHsgICJtZXRhZGF0YV92ZXJz
aW9uIjogIjEuMCIsICJzdXBwb3J0ZWRfZGV2aWNlcyI6WyJyYXNwYmVycnlwaSw0LW1vZGVsLWIi
XSwgInZlcnNpb24iOiB7ICJkaXN0IjogIk9wZW5XcnQiLCAidmVyc2lvbiI6ICJTTkFQU0hPVCIs
ICJyZXZpc2lvbiI6ICJyMTE4MjktZTNlOTM5ZDhlNiIsICJ0YXJnZXQiOiAiYnJjbTI3MDgvYmNt
MjcxMSIsICJib2FyZCI6ICJycGktNCIgfSB9CgogIHJvb3RAT3BlbldydDovIyBzaGEyNTZzdW0g
L3RtcC9zeXN1cGdyYWRlLmltZwogIDVmODA5ODc5YjBkOWEwNzkxY2Q5MzI5OTk3Yzk0NGExMDQ4
Y2Q2YjVmMGNmNTlhYTVmYzM0YjUzODFmZWZiMWMgIC90bXAvc3lzdXBncmFkZS5pbWcKCiAgcm9v
dEBPcGVuV3J0Oi8jIGVjaG8gcmFzcGJlcnJ5cGksNC1tb2RlbC1iID4gL3RtcC9zeXNpbmZvL2Jv
YXJkX25hbWUgCiAKICByb290QE9wZW5XcnQ6LyMgc3lzdXBncmFkZSAvdG1wL3N5c3VwZ3JhZGUu
aW1nCiAgUmVhZGluZyBwYXJ0aXRpb24gdGFibGUgZnJvbSBib290ZGlzay4uLgogIHpjYXQ6IHdy
aXRlIGVycm9yOiBCcm9rZW4gcGlwZQogIHpjYXQ6IHdyaXRlOiBCcm9rZW4gcGlwZQogIFJlYWRp
bmcgcGFydGl0aW9uIHRhYmxlIGZyb20gaW1hZ2UuLi4KICBQYXJ0aXRpb24gbGF5b3V0IGhhcyBj
aGFuZ2VkLiBGdWxsIGltYWdlIHdpbGwgYmUgd3JpdHRlbi4KICBTYXZpbmcgY29uZmlnIGZpbGVz
Li4uCiAgQ29tbWVuY2luZyB1cGdyYWRlLiBDbG9zaW5nIGFsbCBzaGVsbCBzZXNzaW9ucy4KICBG
YWlsZWQgdG8gcGFyc2UgSlNPTjogNAogIGtpbGxhbGw6IHRlbG5ldGQ6IG5vIHByb2Nlc3Mga2ls
bGVkCiAgU2VuZGluZyBURVJNIHRvIHJlbWFpbmluZyBwcm9jZXNzZXMgLi4uIHVidXNkIGFza2Zp
cnN0IHVybmdkIGxvZ2QgbmV0aWZkIG9kaGNwZCBudHBkIGRuc21hc3EgCiAgU2VuZGluZyBLSUxM
IHRvIHJlbWFpbmluZyBwcm9jZXNzZXMgLi4uCiAgLi4uIHNuaXAgLi4uCgogIChCVFcgSSd2ZSBm
aXhbMl0gZm9yIHRoYXQgImhhcm1sZXNzIiBgRmFpbGVkIHRvIHBhcnNlIEpTT046IDRgIGVycm9y
IG1lc3NhZ2UgaW4gbXkgcHJvY2QgcmVwby4pCgpTbyBwZXJoYXBzIHRoaXMgaXMgc29tZXRoaW5n
IENvcnRleC1BNzIgcmVsYXRlZD8KCjEuIGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0
L2NvbW1pdC9mMGM0ZDczYTljMzZhNTRhMzZhZjAxOWJkM2IzZTVhZWIxYmZmY2Y0CjIuIGh0dHBz
Oi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LXByb2NkL2NvbW1pdC9mZjAzZjNlZDliNmFmOGIy
MDlkYWU2M2YyNDc5MDY2NGM5NGJkOTE2CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
