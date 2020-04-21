Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5391B1DCF
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 06:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e5r3rp69xDPMNpGqhBKlXhEuwoZLCsDc70yXkMu+BME=; b=fPEB64NeRHjtMgS3b9d8PLv8A
	dt3Se2yyfOl+N1m3uVsRR625vF/GkGLijkDrsh8VeWUAgs3UmYg5ZISb46dlBmmlOeXsigP3Qk+3D
	1IjjLXkO39tak2Yx1tOtpgA3Syf4QPYawTSWqR3fDOxVzJ+ZgM66j0797J21EZfnmFEd9Kj+/+yT6
	rfepTuOvsf7QA8KMaWeAVUEsar51lwyxlW3IGkmZwCJSojw8vQt/mD1V5tilR+GcGakPgT2SQVE1s
	DQXpYkSWk0mdwroIHuP85TgHImUQgXc65njU5jyUUjhdIM5Bcy6Au1kWwberVf8sz7s8dddSiV5Rz
	uUn1IL5bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQkzU-0006mk-0b; Tue, 21 Apr 2020 04:58:36 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQkzK-0006kF-C2
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 04:58:28 +0000
Received: from [IPv6:2001:14ba:8091:2700:c4c4:75d4:ccbb:2ca]
 (dtckwryhf4v69lxg7yngy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:c4c4:75d4:ccbb:2ca])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 13A852056E;
 Tue, 21 Apr 2020 07:58:15 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1587445095;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jM2MOd7/fzAqrmpdigpnuAw3r4vw66mxpoBxW374Nxk=;
 b=EvMXrUCQnzKemGGbJhfwTuGpbUTm/+2pstGiV4WrrfLzwwWygSJRqv+rSrdT+h71mqsCEN
 +Un7x2uJodOajSEmtvGklf649DnehJ8eEUTL+JL6gDdsJDDmpJ4I0asH8fES1ByydN2pd2
 /mX/MWOdp2AeuBXAKSrVeoJcA1b+9Mg=
To: openwrt-devel@lists.openwrt.org
References: <1B1C9093-5094-47C3-8578-FCCB2E5DE753@redfish-solutions.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <590b25df-be6e-471c-8cfc-199927083edf@iki.fi>
Date: Tue, 21 Apr 2020 07:58:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <1B1C9093-5094-47C3-8578-FCCB2E5DE753@redfish-solutions.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1587445095;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jM2MOd7/fzAqrmpdigpnuAw3r4vw66mxpoBxW374Nxk=;
 b=XyvSZWcIHLeFe/33yrR8FMDh4c8KpMDyZIpHVr8g0XeZxOLO7SNfO0XpJBaSB/DS/8foxy
 WQMZ3VT3urrgIIA8GtGzsNNw6AR8fKFChfUmc2ZvGqlZZemvBdDPuUBRJvmc/nbtiYI9o5
 /wToLT9koC3d4DW/7oNKP53bU30C4Bk=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1587445095; a=rsa-sha256; cv=none;
 b=jgKTv6gCFOPCSLApJM/fCKKMNNsmBK5ElbSPFiSmuXvvUvjHqqn54YWMeUE8CJTRNREuwg
 KXhz9JW43MAUH4GnTMWzXq+Zi6N2rn9Yp85yBtWXH7dp2sycIHIWr9Xc+R5QkqBnl3+4aC
 3xe0SsZ88eJ4f0tihY9+Rl/+n5LL94E=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_215826_751096_254D2EC8 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Can't build x86_64 because of
 ntf_reject_ipv4.ko missing
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
Cc: philipp_subx@redfish-solutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGhpbGlwIFByaW5kZXZpbGxlIHdyb3RlIGF0IE1vbiBBcHIgMjAgMTk6MzY6MTQgUERUIDIwMjA6
CgogPiBDb2xsZWN0ZWQgZXJyb3JzOgogPsKgICogY2hlY2tfZGF0YV9maWxlX2NsYXNoZXM6IFBh
Y2thZ2Uga21vZC1pcHQtbmF0NiB3YW50cyB0byBpbnN0YWxsIGZpbGUgCi9ob21lL3BoaWxpcHAv
bGVkZS9idWlsZF9kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2L2xpYi9tb2R1bGVzLzUu
NC4zMy94dF9NQVNRVUVSQURFLmtvCiA+wqAgwqDCoCBCdXQgdGhhdCBmaWxlIGlzIGFscmVhZHkg
cHJvdmlkZWQgYnkgcGFja2FnZcKgICoga21vZC1pcHQtbmF0CiA+wqAgKiBvcGtnX2luc3RhbGxf
Y21kOiBDYW5ub3QgaW5zdGFsbCBwYWNrYWdlIGttb2QtaXB0LW5hdDYuCiA+IC4uLgogPiBwaGls
aXBwIGF0IHVidW50dTE2On4vbGVkZSQgZ3JlcCAtciB4dF9NQVNRVUVSQURFIGNvbmZpZyBDb25m
aWcuaW4gaW5jbHVkZSAKcGFja2FnZS8gcnVsZXMubWsgTWFrZWZpbGUgdGFyZ2V0LwogPiBpbmNs
dWRlL25ldGZpbHRlci5tazokKGV2YWwgJChpZiAkKE5GX0tNT0QpLCQoY2FsbCAKbmZfYWRkLElQ
VF9OQVQ2LENPTkZJR19JUDZfTkZfVEFSR0VUX01BU1FVRVJBREUsICQoUF9YVCl4dF9NQVNRVUVS
QURFLCBnZSA1LjIpLCkpCiA+IGluY2x1ZGUvbmV0ZmlsdGVyLm1rOiQoZXZhbCAkKGNhbGwgCm5m
X2FkZCxJUFRfTkFULENPTkZJR19JUF9ORl9UQVJHRVRfTUFTUVVFUkFERSwgJChQX1hUKXh0X01B
U1FVRVJBREUsIGdlIDUuMikpCiA+IHBoaWxpcHAgYXQgdWJ1bnR1MTY6fi9sZWRlJAogPgogPiBX
aHkgaXMgaXQgcGFydCBvZiBib3RoIHBhY2thZ2VzP8KgIEFuZCB3aHkgaXMgZG9lcyBpdCBhZGQg
ZGlmZmVyZW50IGZsYWdzIAp3aGVuIGl04oCZcyBidWlsdD8KCgpSZWdhcmRpbmcgSVB2NiBOQVQs
IHlvdSBzdHVtYmxlZCBpbnRvIGEga2VybmVsIDUuNCBpc3N1ZSBvcmlnaW5hbGx5IHJlcG9ydGVk
IAppbiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8y
MDIwLUZlYnJ1YXJ5LzAyMTkyOS5odG1sCgpCdWcgcmVwb3J0OiBodHRwczovL2J1Z3Mub3Blbndy
dC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yOTI0CgpUaGF0IHNob3VsZCBoYXZl
IGJlZW4gZml4ZWQgeWVzdGVyZGF5IGJ5Cmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53
cnQvb3BlbndydC5naXQ7YT1jb21taXRkaWZmO2g9MjlhNDU4YjBjYWUzNDM1YmNlNDExMzZlZTNi
NDEzMmI0MTAzZmZhZQoKSGF2ZSB5b3UgdXBkYXRlZCB5b3VyIHNvdXJjZSByZXBvPwoKKFRoYXQg
aXNzdWUgd2FzIG5vdCBkZXRlY3RlZCBieSB0aGUgYnVpbGRib3QsIGFzIGl0IHdhcyBhIGZpbGUg
Y2xhc2ggYXQgCnBhY2thZ2UgaW5zdGFsbGF0aW9uLCBub3QgYW4gYWN0dWFsIGNvbXBpbGF0aW9u
IGVycm9yIG9mIHRoZSBwYWNrYWdlIGl0c2VsZi4pCgoKQnV0IG5vIGlkZWEgd2h5IHRoYXQgaXB2
NiBOQVQgdGhpbmcgd291bGQgaGF2ZSBjYXVzZWQgeW91ciBvcmlnaW5hbCBpdGVtIG9mIAoibnRm
X3JlamVjdF9pcHY0LmtvIG1pc3NpbmciLi4uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
