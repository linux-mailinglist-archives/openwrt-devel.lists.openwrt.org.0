Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2A31F0687
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 14:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8SRIFc8wRZ60F10KRG74zR6ukdtax8A4Z1RxhEcXo/o=; b=dAkyvXAJFglaSsw74x/ixs6qK
	qXxc0s2BHx3X/fUCfz7fSsSHqG9qTMvvcewL7n96wIg/RrN5UTkFJIJA0qTO6pgUKwYFIjU28xdlo
	oYvZ7bMbOEMGZ48PKh1IprK24xfsgTmvn6q13P2PhwfqsueXUBpYMBSgrAotaQXsart8sNYA0UEkQ
	fqlVV7TUd7Gdl3Snw4WaqdfE2Bwl1VMbUKfRRw0UY93S/qmPpib99rQsmdR9CpwzVuF4qGyWGFBpH
	OO/mX/VLwfG96sfQv5/wbuUuhyL3lQkhSTM+HnqzRTTBQuRMluaLGNH9NzhwM2FyrllnV7Gi7Bt0b
	nWwae6byg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYBc-0002p9-93; Sat, 06 Jun 2020 12:44:32 +0000
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
 <20200606045751.GC32043@meh.true.cz>
Date: Sat, 6 Jun 2020 14:44:11 +0200
In-Reply-To: <20200606045751.GC32043@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21076.1591447467.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
Content-Type: multipart/mixed; boundary="===============2391990131400831783=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2391990131400831783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2391990131400831783==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic310-57.consmr.mail.ir2.yahoo.com ([77.238.177.30])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYBW-0002oZ-20
	for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 12:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591447457; bh=/puTg6jhYjChy4RguUc3gZQqJn6zPaJ8WOwwnIWBM7A=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=C5GHvZq3T2Xa0X/BCnjr5953lKBRnftjcp/8B568f8Qv0wIsYoFy2vU/LoDYMShyVQpLlNaJIHaEdpbi9G4K/0a8mskJdQWrELmhPmETBqF0+o0v4HhArHbR/pXXNR9OIfUUlZYPN4TP44C0hXFHOEZRwWqAycUxciN2K1aiXo30ZHyRtIWuh+9/45vBmcaGoMYpPE9gZ+zR30xAbkupEAZDv9KBloyU/f/KxT48KpxjTkngVoSe0kkjjklE6jX+TeLhBrPmiKUoxTNAjCo027vaX3hn9mqF2vAPamjdpQudzFMjbs9lLTgtxeBK6ENT8OnsK2FoAasv54I0vut90w==
X-YMail-OSG: Q03z6roVM1nd36ApnkJyvTwDLQlhbA7yxPw6BGN8eqUzM1wsU9V45kzCoqfIcny
 PE84IFQexXeliLgFDqqEqh4eIVALbBHV7WWAzog6V4kXMBtBTme41bZr_E7Pf6t9G3sU6qTTPXhx
 9Ut5j5wtTawQwyuU7b70r_T.rL4g8DBYGrfwReLqOmwyMXoCZuitlKIqObes.rK2iE6iuXCqmCJ8
 cYjvCaFe2NqFUJwueNStoD1RDgTuNSeYf3ntuUkFqBvVOloYfBgnlhVz_gadR0sBpFCgV1bdYhQ_
 GFK9kXRUex.UlCTcLpi6xlwWzGy5jloEMSszIQ1FOXXMjO9WKSboIPDr4063KwQJ47R271elUCJy
 C3sMHQu.pRH9vaczKMWIIskvRzYSsSz89_kk8hQU7FNMZNzXOIgYdKHqudykM_ez3LZtqCWv4PNd
 WH8aa96Omtidxxjgyv87KbdSna2pn5pQG6AaC75MuOrxdlLuOUM.jYyNVPvKLSFcpO_DfpghaWS9
 AuBF5LYcu9hCmchMSnferY6sfMiLqF5XHy4gLEAhz.v5VR3b.pZ_qMZO4bSj3Vi8qdVZ3VtDYjta
 A_v691r29YZyNoQH03C3yT8YYFHUqdE5BWCHB6LmoxuasV2BZ6V_klsurwrTgHBoCJ6mUKHVHF1N
 I_3RtlzT.3dmYtnlMFhFHUd2MxQDxVHzIK0UI.83U8._tAYZbE4HqrGHCUPXGP98ACTljPeH0kee
 YOeEyZYTNo0fgMz3stdtT__zk5BF8kfVSaE4OmFR8ZPhn0kdqmw2_F55RHEVkM2xfpAzoX.LmKMI
 EzLn6PVUAOKGYO0Dw8tA855YYIC55I_q6yGUDFKPFvgDwtCWihA.br6WPhEIQzC4RfyC4le3K5QA
 FMblGF2L5vU.V9HZGknij3l4nbEb3SNdrMErBDh53oZLWY8Vwz0pnSTve3HJD5I3jX_TC7SqMwsO
 nwM6DIYTmau1DwT435DRorJ2btNJ4JWi1OAvJ8qHWBj0qBJVrtdSgJtiWp8u3uECO_rb30ktM77V
 HX2Qw4E8ixP.Qo9fX5FCTlZPLSCMiTdPDWWLj31vYLKUHMw5O39NckhXDD7OyWKBSLdXpT4Pnoya
 loaNQMnur2DBzuEdxFUWbfpAEHN7ixBZRUQ0Z80e_zalbReuhyaD_osVEVJoAoU0RBZgx1_ey9_7
 3uKqImBqdD4SPpffgBUAvlqvwLJfZA3muABY87tg0idWYKelcMuHeScQvhyN6gmOUaxQy2EO0RDX
 ZIkY2TYsFafpt97J.SpUxjYTnQ471KTZ8rrS7evjoVVRcE9m83TQTbHuQA0hl1GMMAPdkUEq3gid
 B0jNqgRL5l0cxzE5GIydCTToTuby6UIuE3KZ0BsMJPD2ToLHQaLmUMNdLFKY02LcAbZhqGtAq4lg
 lOL4oMcgAuyC_ZDFnfjr6O8a7G2s9k6SjUT7aDHM2ajI1F9LaR3WmRMSGAODD64h13PAwGoUO1nn
 ULAjCHP_VSQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ir2.yahoo.com with HTTP; Sat, 6 Jun 2020 12:44:17 +0000
Received: by smtp411.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 6be55ecfe0282b34532e179680f1f0e3;
          Sat, 06 Jun 2020 12:44:12 +0000 (UTC)
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
 <20200606045751.GC32043@meh.true.cz>
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Message-ID: <499bcc2e-20f7-cf37-0bda-a80dc299022b@yahoo.com>
Date: Sat, 6 Jun 2020 14:44:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200606045751.GC32043@meh.true.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailer: WebService/1.1.16072 hermes_yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_054426_233187_7AD7A9D5 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.177.30 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ruben10post[at]yahoo.de]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.177.30 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different


> https://openwrt.org/submitting-patches#no_mime_no_links_no_compression_no_attachments_just_plain_text

Sometimes I use Thunderbird, and sometimes I use the Yahoo web interface. Both have problems with e-mail formatting, as they tend to reflow text lines 
and mess with quotations and blanks. Sending patches as plain text inside e-mails is too much trouble for me.

I do not understand why Patchwork cannot automatically pick up a patch from an e-mail attachment aptly named xxx.patch, and with an e-mail title that 
starts with [PATCH].

Is it possible to add patches manually to Patchwork using its web interface? If so, I would try that way.

Otherwise, I am tempted to drop it (and other such further contributions I had in the pipeline). This is a trivial fix and the administrative cost of 
getting it right is clearly disproportionate.

Regards,
   rdiez


--===============2391990131400831783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2391990131400831783==--
