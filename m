Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A991DF6819
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 10:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/vQCB/bESBsvNWKmvWt1uAbNWl1/lrxnncuOIZJg1y4=; b=qQV
	qUCPWhy9YUrKlGGyvQJG4aTfq1M23uRtUfPRmjSWLNKhXIbTXV12d8jngNgZ216UN5d55Yh6F7wgM
	9vv2QZTzDmyjTvorsIztnFK6k46lH58+LArQGTznF25ByBU8RsWsQWNHbG9Jx83/L6idgxg+me1Tc
	km7razGIuHNGAQk6vQ0FFTchyBHBSB7XG6YmUylQoV4RAIiVbJ1MHZminFjtycTvmJ8oQDjcShWDt
	bfgEF42Er6nRqLN/2MJM9Vkujnopu5apGIPizhSM9rtZZgm06OsbRNYqvOth31ji9EH8Z6W7R+kOs
	/cyJe62lLrhO9XETptH6NPqQz8KpY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTjLE-0001uO-90; Sun, 10 Nov 2019 09:17:04 +0000
Date: Sun, 10 Nov 2019 09:16:09 +0800
To: <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.10100.1573377419.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?b?5LiT5Lia5YWR5o2iIHZpYSBvcGVud3J0LWRldmVs?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: 776371401@qq.com
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] v7yllvny3
Content-Type: multipart/mixed; boundary="===============1296856318749963368=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============1296856318749963368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1296856318749963368==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from vsmtp300.cm01.cloud-mail.jp ([27.120.129.17] helo=vsmtp302.cm01.cloud-mail.jp)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTjKz-0001tq-1G
	for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 09:16:54 +0000
Received: from ail.co ([45.117.102.50]) by vsmtp302.cm01.cloud-mail.jp (3.11v) with ESMTP AUTH id xAA9GbJf029145 for <openwrt-devel@lists.openwrt.org>; Sun, 10 Nov 2019 18:16:37 +0900 (JST)
Reply-To: <776371401@qq.com>
Sender: kuto@ttv.ne.jp
Date: Sun, 10 Nov 2019 09:16:09 +0800
From: =?utf-8?B?5LiT5Lia5YWR5o2i?= <776371401@qq.com>
To: <openwrt-devel@lists.openwrt.org>
Subject: v7yllvny3
Message-ID: <20191110091623628560@ttv.ne.jp>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="=====003_Dragon054630228111_====="
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_011649_297759_66E27822 
X-CRM114-Status: UNSURE (  -4.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [27.120.129.17 listed in list.dnswl.org]
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?45.117.102.50>]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit (776371401[at]qq.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (776371401[at]qq.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

This is a multi-part message in MIME format.

--=====003_Dragon054630228111_=====
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

5L2g5aW9IOaIkeWFrOWPuOmcgOimgei0uOaYk+asviDjgIHnvo7ph5Eg5qyn5YWDIOa4r+W4gSAg
IOetieWFtuS7lui0p+W4gSAg5oiR5YWs5Y+45Y+v5YWI5LuY5Lq65rCR5biBICAg5Y+v5Y676LS1
5YWs5Y+46KeB6Z2iICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgDQrlhajnkIPnu5PmsYcgIOaNouaxhyDlpJbmsYfkubDlhaXljZblh7ogLuWbveWGheWklueU
teaxhyBf6aaZ5riv5rGH5LiwIOaBkueUnyDkuK3pk7Yg5bmz5a6JIOmmmea4r+WQhOWkp+mTtuih
jCDnprvlsrjpk7booYwg6ZyA6KaB5LqG6KejIOivt+WKoFFRIOaIluiAhVZYDQpDb250YWN0IChR
USkgOiA3NzYzNzE0MDENCkNvbnRhY3QgV2VDaGF0IDogbXJmMDgxOA==

--=====003_Dragon054630228111_=====
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMCBUcmFuc2l0aW9uYWwv
L0VOIj4NCjxIVE1MPjxIRUFEPg0KPE1FVEEgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0
Zi04IiBodHRwLWVxdWl2PUNvbnRlbnQtVHlwZT4NCjxNRVRBIG5hbWU9R0VORVJBVE9SIGNvbnRl
bnQ9Ik1TSFRNTCA4LjAwLjc2MDAuMTYzODUiPjwvSEVBRD4NCjxCT0RZPg0KPFA+5L2g5aW9IOaI
keWFrOWPuOmcgOimgei0uOaYk+asviDjgIHnvo7ph5Eg5qyn5YWDIOa4r+W4gSZuYnNwOyZuYnNw
OyDnrYnlhbbku5botKfluIEmbmJzcDsg5oiR5YWs5Y+45Y+v5YWI5LuY5Lq65rCR5biBJm5ic3A7
Jm5ic3A7IA0K5Y+v5Y676LS15YWs5Y+46KeB6Z2iJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IA0KPC9QPg0KPFA+5YWo55CD57uT5rGHJm5ic3A7
IOaNouaxhyDlpJbmsYfkubDlhaXljZblh7ogLuWbveWGheWklueUteaxhyBf6aaZ5riv5rGH5Liw
IOaBkueUnyDkuK3pk7Yg5bmz5a6JIOmmmea4r+WQhOWkp+mTtuihjCDnprvlsrjpk7booYwg6ZyA
6KaB5LqG6KejIOivt+WKoFFRIA0K5oiW6ICFVlg8QlI+Q29udGFjdCAoUVEpIDogNzc2MzcxNDAx
PEJSPkNvbnRhY3QgV2VDaGF0IDogbXJmMDgxODwvUD48L0JPRFk+PC9IVE1MPg0K

--=====003_Dragon054630228111_=====--



--===============1296856318749963368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1296856318749963368==--


