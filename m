Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA8A109B75
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 10:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elR2jAuwNDjz1DueuBq0b4GkwM/QCPKyehN8vubEG+c=; b=WQdFuT8Hc87O9z
	G2/4fIy9Fd5TNxYmt6T8ArUA0wbZHXKPq7r2uxTgJsfIwmHNvVY82Qp49iNHv2zc3l6LZPmOCoNCX
	Qx3S0J4kHbQTxPn6ZAAqnVuQe2E0fd/GCOjYOMFEc9qciQH84EtkbGBCCIXkXjBrtzt1smKHMPB5i
	1Tu19P78U9YB/Si1vj/laQlKR2JLMc4pUUYFv21emT7xGh+hL2wNVTcPfSFGJ0MJwCjnb4Xf65Rdo
	DWHeyQYtYk3/KiMls553EAQ15XGU3agXGR38y8smpXd4kj8NZrWxGSMFgzaiedY+mNAtDzQyi/92E
	iNLQPqVvn1PV1co2CvBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXPJ-0006qh-CX; Tue, 26 Nov 2019 09:45:17 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXOx-0005ov-Hn
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 09:44:57 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id C26654234171;
 Tue, 26 Nov 2019 10:44:46 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 4UHETW49GJAt; Tue, 26 Nov 2019 10:44:46 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 05CFE468217F;
 Tue, 26 Nov 2019 10:44:46 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 05CFE468217F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1574761486;
 bh=L6kKfi2yVuksTjTSAAlzAi0XgZO6My5FBe8oUsesNXM=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=KQ/H50lUk/UWmGD/wEd+CYsDtwF5/0r9cOLod3g1rN/eqA/MxvK5E8fyrh1mehT67
 cg6mczFVAOzWFatf5KAZq8GqfOLahLRyZijaPcDjqn9Of73Nl7BrTlTTbIQEQqJtFQ
 Xze9DMXH5WG/QDDsk0psbiBe+8RfZ3rQl3yxLUzw=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id w7JH51r4hX06; Tue, 26 Nov 2019 10:44:45 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::4851] (unknown
 [IPv6:2001:67c:21bc:24::4851])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 6307A4234171;
 Tue, 26 Nov 2019 10:44:45 +0100 (CET)
To: openwrt-devel@lists.openwrt.org, Hauke Mehrtens <hauke@hauke-m.de>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
From: Stijn Tintel <stijn@linux-ipv6.be>
Autocrypt: addr=stijn@tintel.eu; prefer-encrypt=mutual; keydata=
 mQGiBEH89pgRBADaDGQPsrj3LL+qDUdJBZtXK4lTsZkjHEf69d8PlBBti+R7ElEibouYk6x4
 Hu/FmhInJXLEEJ79Rqe5p8drV4sV7Gu8c9v6qq8CnqO4IrnGBK1cwCrM/ix82fNfwA+c7xRs
 aGlnqal8rsVl+VdxI0W6el0elr/ncqadpMx/jwhbFwCgsxMN+nbWl+AU8Rc8Zwm7XbaepaMD
 /3sNoTqBPqNLSOAavL/+hKZpWJGUPS0//RGOf70tL68xCUHFv3i9xVtzDV1PtWJNpFVx7RR8
 lTKQddXEvJFSLrTANi21dsxfE6mE0izCXqNMgQh5fR0pqoSFsnc5XIr1XcmpHPkcTVkEY9wQ
 nuwnq1qsgzSQ6u+VMyU3AevXz18pBACMlvJSENK3wg0M1xJmPr/EhpmLTBiKxLVmJlJEMiL4
 CX918bqkfUMd1WOPJUqlrFgFAhY7LDPLC0aS/zXRfDA3dGoXEjZr3RDvh9ZLmFlJPABecG9c
 gMtqVege14lovP9Rbmo0iOJzz3KPuevJLz/6h4aiMC2hlEu7TVRd/NUJfrQeU3Rpam4gVGlu
 dGVsIDxzdGlqbkB0aW50ZWwuZXU+iGMEExECACMCGyMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
 gAUCSEViSgIZAQAKCRDClHg8P5MpRMnLAJ4swfQkCyaba7ThmzyB7ShD857S4wCgrzGpVglS
 4j7usjv613ItYOeAffa5Ag0EQfz2oRAIAMOIvsgl8buiO/9leg6aUbmoBw8+ODLVUstVfrIU
 FC4D6ZFghiYmelIBf+cCkoL/Ezn5KUdZqCOaTf2M1U6RVg6CWhaaEoCEsVaW/t09NvFpp6Ml
 cOipCd1HLYtdaSfPZe6NxZiVjrHanBXHtLwLzMGyRPuLDG/5D7TF86RXVIorG51O//mYXAHw
 C1mIqhEy49czTBDSfdF4ZGwHHHJ+tWUWC6KpclGyjgeRaF2GTQEiHJC3zTaUSov1LWsuOBuG
 jeP6z1juUdcaXX2jF0rOUSF2O1DsMPm6apnQPcowDq+1RJd1FR2Q1C9rs2dCmix1My5KomWs
 FUp1nnJ71zE8KScAAwUH/R1rKZeeqtLdB82kpaeCMn2YnMDkp6uztVim8+yIcGJL7ynNVDh8
 +9CWLULM+gN/0Wtno7m0s5j//T3qiBC4JnBOPPhZbCvQcaX1MW22U1WLbrnxFimbRObZ1/j2
 E5/zSjOqftwroJ3MCoHaopnbN0wchZdV1tKnbmu0Gspcxy/x/SLl9+tLkLcKiLIuCYpqFsLF
 tfowRS1j1vdf/+agv/Fl5BpPOBNI440gh7MQCqSI/hwILYe5fBAPxGohTWhc0HpSgWm0NH45
 M1+F29mTN7T7C6zxudKKOtxZkqDJ+dbFomSHb4DdDe6uovdGlfuHqfPbDxHf6xzmtZtg0Yv2
 HlKIRgQYEQIABgUCQfz2oQAKCRDClHg8P5MpRIB2AJ9TpUI7s01hDC37+xYkTviLdBsidQCf
 S6xQVWiJDc27xDSnbkv1ZoVvpuU=
Message-ID: <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
Date: Tue, 26 Nov 2019 11:44:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_014456_036138_89383959 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 status
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 26/11/2019 00:34, Hauke Mehrtens wrote:
> It looks like there is a throughput problem with ath10k-ct on QCA9984,
> https://bugs.openwrt.org/index.php?do=details&task_id=2593
> there are multiple reports in the Forum.
>
> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 19.07
> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with a
> wall in between with sae-mixed to a Intel iwl8265.
> It is also very close to 40MBit/s not much changing the lowest I saw in
> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 MBit/s

I am seeing the same low RX with a qca988x AP and an 8265 client. This
did not happen earlier this year. I first noticed this on September 5th,
but I don't have known good commit hash. The problem goes away when I
disable 802.11w. Without 802.11w, I get 300-400Mbps TX and RX. Do you
have any other clients than the 8265 to test this? Ben suggested this
might be an issue on the 8265 end, and to use a sniffer to look into
block-ack setup packets:

18|20:29:01< greearb__> sniff the block-ack setup packets, make sure
client sends them encrypted (ie, if you see them open-auth encoded,
sender is issue)
18|20:30:51< greearb__> you will really want to spend some quality time
with a sniffer to see if block-acks are working or not, and if BA setup
frames are properly encrypted

Unfortunately the device with the 8265 is my only Linux client with 5GHz
and convenient sniffing support. Some of the Raspberry Pi boards seem to
support it with nexmon, but that looks overcomplicated. Maybe I could
try with my DIR860L, but so far I have not been able to do so. If you
have the equipment for it, maybe you can give it a try?

Other than that, ath10k-ct is extremely stable on all my APs. Something
that cannot be said about ath10k. With the right combination of clients,
it was crashing within 1 day of uptime, while still sending beacons,
thus clients still trying to associate to the 5GHz network. WiFi
experience with stock ath10k was simply abysmal, almost downright
unusable. It was suggested that this was due to the use of 802.11w, but
disabling 802.11w is not a solution, and in my opinion not even an
option, especially with WPA3.

Stijn



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
